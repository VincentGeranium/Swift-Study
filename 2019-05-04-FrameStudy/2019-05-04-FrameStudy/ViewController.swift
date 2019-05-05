//
//  ViewController.swift
//  2019-05-04-FrameStudy
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        frame()
    }
    
    func frame() {
        let blueView = UIView()
        let redView = UIView()
        let greenView = UIView()
        let startPoint: CGFloat = 30
        let marginalSpace: CGFloat = 60
        
        blueView.frame = CGRect(x: startPoint, y: startPoint, width: super.view.frame.width - marginalSpace, height: super.view.frame.height - marginalSpace)
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        
        redView.frame = CGRect(x: startPoint, y: startPoint, width: blueView.frame.width - marginalSpace, height: blueView.frame.height - marginalSpace)
        redView.backgroundColor = .red
        blueView.addSubview(redView)
        
        greenView.frame = CGRect(x: startPoint, y: startPoint, width: redView.frame.width - marginalSpace, height: redView.frame.height - marginalSpace)
        greenView.backgroundColor = .green
        redView.addSubview(greenView)
    }
}

