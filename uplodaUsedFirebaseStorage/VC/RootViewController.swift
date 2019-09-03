//
//  RootViewController.swift
//  uplodaUsedFirebaseStorage
//
//  Created by 김광준 on 28/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//
import TinyConstraints
import FirebaseStorage
import FirebaseFirestore
import Kingfisher
import UIKit

class RootViewController: UIViewController {
    
    lazy var takePhotoBarButtonItem = UIBarButtonItem(title: "Take", style: .done, target: self, action: #selector(takePhoto))
    
    lazy var savePhotoBatButtonItem = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(savePhoto))
    
    lazy var uploadPhotoBarButtonItem = UIBarButtonItem(title: "Upload", style: .done, target: self, action: #selector(uploadPhoto))
    
    lazy var downloadPhotoBarButtonItem = UIBarButtonItem(title: "Download", style: .plain, target: self, action: #selector(downloadPhoto))
    
    let imagePickerController = UIImagePickerController()
    let imageView = UIImageView()
    let activityIndicator = UIActivityIndicatorView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePickerController.delegate = self
        
        setupViews()
        setupNavigationItem()
        setupLayout()
        setupConfigure()
        
    }
    
    fileprivate func setupNavigationItem() {
        navigationItem.setLeftBarButtonItems([takePhotoBarButtonItem, savePhotoBatButtonItem], animated: false)
        navigationItem.setRightBarButtonItems([uploadPhotoBarButtonItem, downloadPhotoBarButtonItem], animated: false)
    }
    
    fileprivate func setupViews() {
        view.backgroundColor = .white
        
        view.addSubview(imageView)
        view.addSubview(activityIndicator)
    }
    
    fileprivate func setupLayout() {
        let guide = view.safeAreaLayoutGuide
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: guide.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
            ])
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndicator.centerXAnchor.constraint(equalTo: guide.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: guide.centerYAnchor),
            ])
    }
    
    fileprivate func setupConfigure() {
        imagePickerController.sourceType = .camera
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .lightGray
        activityIndicator.style = .whiteLarge
    }
    
    @objc fileprivate func takePhoto() {
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @objc fileprivate func savePhoto() {
        
        guard let image = imageView.image else { return }
        activityIndicator.startAnimating()
        
        //        UIImageWriteToSavedPhotosAlbum(image, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
        
        saveToAlbum(named: "CustomAlbum", image: image)
        
    }
    
    @objc fileprivate func uploadPhoto() {
        activityIndicator.startAnimating()
        
        // convert Image to Data
        // imageview.image = optional
        guard let image = imageView.image, let data = image.jpegData(compressionQuality: 1.0) else {
            presentAlert(title: "Error", message: "Something went wrong")
            return
        }
        
        let imageName = UUID().uuidString
        
        let imageReference = Storage.storage().reference()
            .child(MyKeys.imageFolder)
            .child(imageName)
        
        imageReference.putData(data, metadata: nil) { (metadata, err) in
            if let err = err {
                self.presentAlert(title: "Error", message: err.localizedDescription)
                return
            }
            
            imageReference.downloadURL(completion: { (url, err) in
                if let err = err {
                    self.presentAlert(title: "Error", message: err.localizedDescription)
                    return
                }
                
                guard let MyUrl = url else {
                    self.presentAlert(title: "Error", message: "Url Error")
                    return
                }
                
                let dataReference = Firestore.firestore().collection(MyKeys.imageCollection).document()
                
                let documentUid = dataReference.documentID
                
                let urlString = MyUrl.absoluteString
                
                let data = [
                    MyKeys.uid: documentUid,
                    MyKeys.imageUrl: urlString
                ]
                
                dataReference.setData(data, completion: { (err) in
                    if let err = err {
                        self.presentAlert(title: "Error", message: err.localizedDescription)
                        return
                    }
                    
                    UserDefaults.standard.set(documentUid, forKey: MyKeys.uid)
                    
                    self.imageView.image = UIImage()
                    self.presentAlert(title: "Success", message: "Successfully save image to database")
                    
                    self.activityIndicator.stopAnimating()
                })
                
            })
        }
        
    }
    
    @objc fileprivate func downloadPhoto() {
        activityIndicator.startAnimating()
        
        guard let uid = UserDefaults.standard.value(forKey: MyKeys.uid) else {
            self.presentAlert(title: "Error", message: "Can't get uid")
            return
        }
        
        let query = Firestore.firestore()
            .collection(MyKeys.imageCollection)
            .whereField(MyKeys.uid, isEqualTo: uid)
        
        query.getDocuments { (snapshot, err) in
            if let err = err {
                self.presentAlert(title: "Error", message: err.localizedDescription)
                return
            }
            
            guard let snapshot = snapshot,
            let data = snapshot.documents.first?.data(),
            let urlString = data[MyKeys.imageUrl] as? String,
            let downloadUrl = URL(string: urlString) else {
                self.presentAlert(title: "Error", message: "snapshot, data, url error")
                return
            }
            
            let resource = ImageResource(downloadURL: downloadUrl)
            self.imageView.kf.setImage(with: resource, completionHandler: { (result) in
                switch result {
                    
                case .success(_):
                    self.presentAlert(title: "Success", message: "Successfully download image form database")
                case .failure(let err):
                    self.presentAlert(title: "Error", message: err.localizedDescription)
                @unknown default:
                    print("It looks like Apple has added a new case here")
                }
            })
            
        }
    }
    
    func saveToAlbum(named: String, image: UIImage) {
        let album =  CustomAlbum(name: named)
        album.save(image: image) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(_):
                    self.presentAlert(title: "Success", message: "Succefully save photo to album \(named)")
                case .failure(let err):
                    self.presentAlert(title: "Error", message: err.localizedDescription)
                }
            }
        }
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError err: Error?, contextInfo: UnsafeRawPointer) {
        activityIndicator.stopAnimating()
        if let err = err {
            presentAlert(title: "Error", message: err.localizedDescription)
        } else {
            presentAlert(title: "Saved!", message: "Image saved successfully")
        }
    }
    
    func presentAlert(title: String, message: String) {
        activityIndicator.stopAnimating()
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

extension RootViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else {
            print("Image not found!")
            return
        }
        imageView.image = selectedImage
        imagePickerController.dismiss(animated: true, completion: nil)
    }
}
