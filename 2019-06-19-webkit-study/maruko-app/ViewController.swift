//
//  ViewController.swift
//  maruko-app
//
//  Created by 김광준 on 19/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myWebView: WKWebView!
    
    func loadWebPage(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWebView.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebPage("https://www.youtube.com/channel/UC1aaTtgKSF9QtkcwKhTmS6A")
        
    }
    
    
    
    
    
    


}
