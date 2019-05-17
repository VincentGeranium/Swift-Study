//
//  ViewController.swift
//  2019-05-17-GestureRecognizerAndUIImagePicker
//
//  Created by 김광준 on 17/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {
    
    let imagePickerController = UIImagePickerController()
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePickerController.delegate = self
        
        // 이미지 뷰를 탭 했을때 앨범이 뜨게 하는 코드
        // info.plist에 허가 안받았는데 가능함 왜 그런지 이유를 알아야 될 필요성이 있음
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction(_:)))
        imageView.addGestureRecognizer(tapGesture)
        imageView.isUserInteractionEnabled = true
        
    }
    
    

    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
    }
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let mediaType = info[.mediaType] as! NSString
        if UTTypeEqual(mediaType, kUTTypeImage) {
            let originalImage = info[.originalImage] as! UIImage
            let editedImage = info[.editedImage] as? UIImage
            let selectedImage = editedImage ?? originalImage
            imageView.image = selectedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
}

