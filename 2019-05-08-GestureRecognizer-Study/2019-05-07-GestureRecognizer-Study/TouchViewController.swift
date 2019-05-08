//
//  ViewController.swift
//  2019-05-07-GestureRecognizer-Study
//
//  Created by 김광준 on 07/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class TouchViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var isHoldingImage = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.clipsToBounds = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
        guard let touch = touches.first else { return }
        
        let touchPoint = touch.location(in: touch.view)
        print("touchPoint : ", touchPoint)
        
        if imageView.frame.contains(touchPoint) {
            imageView.image = UIImage(named: "cat2")
        }
        
        isHoldingImage = true
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        guard isHoldingImage, let touch = touches.first else { return }
        let touchPoint = touch.location(in: touch.view)
        
        if imageView.frame.contains(touchPoint) {
            imageView.center = touchPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        guard let touch = touches.first else { return }
        
        let touchPoint = touch.location(in: touch.view)
        
        if imageView.frame.contains(touchPoint) {
            imageView.image = UIImage(named: "cat1")
        }
        isHoldingImage = false
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        
        // touchesEnded의 코드와 똑같은 기능의 코드
        // 이렇게 짧게 쓰는것이 더 좋은 코드
        imageView.image = UIImage(named: "cat1")
        isHoldingImage = false
    }


}

