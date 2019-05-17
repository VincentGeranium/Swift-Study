//
//  ViewController.swift
//  2019-05-17-GestureRecoginze-StoryBoard
//
//  Created by 김광준 on 17/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        print("tap gesture recognizer called")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touches Began called")
    }
    

}

