//
//  ViewController.swift
//  2019-05-09-UIImagePickerController-Study
//
//  Created by 김광준 on 09/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import MobileCoreServices
import UIKit

final class ViewController: UIViewController {
    
    
    @IBOutlet private weak var imageView: UIImageView!
    private let imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePickerController.delegate = self
    }
    
    @IBAction private func pickImage(_ sender: Any) {
        imagePickerController.sourceType = .savedPhotosAlbum
        // 다른 앨범 코드
        //imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true)
    }
    
    @IBAction private func takePicture(_ sender: Any) {
        // 카메라 구동 가능한지 확인하는 코드
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else {
            return }
        
        imagePickerController.sourceType = .camera
        print(imagePickerController.mediaTypes)
        
        imagePickerController.mediaTypes = [kUTTypeImage as String]
        // .mediaTypes -> 미디어 선택 컨트롤러가 액세스 할 미디어 유형을 나타내는 배열.
        present(imagePickerController, animated: true)
        
    }
    
    @IBAction private func takePictureWithDelay(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
        
        imagePickerController.sourceType = .camera
        imagePickerController.mediaTypes = [kUTTypeImage as String]
        present(imagePickerController, animated: true) {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {self.imagePickerController.takePicture()
            })
        }
    }
    
    @IBAction private func recordingVedio(_ sender: Any) {
        guard UIImagePickerController.isSourceTypeAvailable(.camera) else { return }
        
        imagePickerController.sourceType = .camera
        imagePickerController.mediaTypes = [kUTTypeMovie as String]
        
        let mediaTypes = UIImagePickerController.availableMediaTypes(for: .camera)
        
        imagePickerController.mediaTypes = mediaTypes ?? []
        imagePickerController.cameraCaptureMode = .video
        
        present(imagePickerController, animated: true)
    }
    
    @IBAction private func toggleAllowsEditing(_ sender: Any) {
        imagePickerController.allowsEditing.toggle()
    }
    
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("cancel")
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[.mediaType] as! NSString
        if UTTypeEqual(mediaType, kUTTypeImage) {
            let originalImage = info[.originalImage] as! UIImage
            let editedImage = info[.editedImage] as? UIImage
            let selectedImage = editedImage ?? originalImage
            imageView.image = selectedImage
            
            if picker.sourceType == .camera {
                UIImageWriteToSavedPhotosAlbum(selectedImage, nil, nil, nil)
            } else if UTTypeEqual(mediaType, kUTTypeMovie) {
                print("Video Info : ", info)
                if let mediaPath = (info[.mediaURL] as? NSURL)?.path, UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(mediaPath) {
                    UISaveVideoAtPathToSavedPhotosAlbum(mediaPath, nil, nil, nil)
                    print("Media Path : ", mediaPath)
                }
            }
        }
     picker.dismiss(animated: true, completion: nil)
    }
}
