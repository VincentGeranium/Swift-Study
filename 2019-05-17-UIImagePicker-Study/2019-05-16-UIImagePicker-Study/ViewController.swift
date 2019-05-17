//
//  ViewController.swift
//  2019-05-16-UIImagePicker-Study
//
//  Created by 김광준 on 16/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePickerController = UIImagePickerController()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        imagePickerController.delegate = self
    }

    @IBAction func pickImage(_ sender: UIButton) {
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: true, completion: nil)
    }
    
    
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
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

