//
//  GestureViewController.swift
//  2019-05-07-GestureRecognizer-Study
//
//  Created by 김광준 on 08/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit



class GestureViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.masksToBounds = true
    }
    
    var isQuardruple = false
    
    @IBAction private func handleTapGesture(_ sender: UITapGestureRecognizer) {
        print("Double Tap")
        
        if !isQuardruple {
            imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        } else {
            imageView.transform = CGAffineTransform.identity
        }
        isQuardruple.toggle()
    }
    
    @IBAction private func handleRotationGesture(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        imageView.transform = CGAffineTransform.identity.rotated(by: rotation)
    }
    
    @IBAction private func handleSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        let swipeRight = UISwipeGestureRecognizer.Direction.right
        let swipeLeft = UISwipeGestureRecognizer.Direction.left

        if sender.direction == swipeRight {
            imageView.image = UIImage(named: "cat2")
        } else if sender.direction == swipeLeft {
            imageView.image = UIImage(named: "cat1")
        }
    }
}
