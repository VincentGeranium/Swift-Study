//
//  ViewController.swift
//  2019-09-09-view-hierarchy-example
//
//  Created by 김광준 on 09/09/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewRect = CGRect(x: 100, y: 100, width: 200, height: 200)
        
        let subView = UIView(frame: viewRect)
        
        subView.backgroundColor = UIColor.green
        
        print("서브뷰의 프레임의 CGRect : \(subView.frame)")
        print("서브뷰의 바운드의 CGRect : \(subView.bounds)")
        print("서브뷰의 프레임 Origin : \(subView.frame.origin)")
        print("서브뷰의 바운드 Origin : \(subView.bounds.origin)")
        
        self.view.addSubview(subView)
    }


}

