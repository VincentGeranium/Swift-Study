//
//  InstagramViewController.swift
//  Jamminim-Project
//
//  Created by 김광준 on 30/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import WebKit

class InstagramViewController: UIViewController {
    
    var jammiInstaView = WKWebView()
    let backBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        webViewLayout()
        loadInstaWebPage("https://www.instagram.com/jamminim/")
        backBtnConfiguration()
        backBtnLayout()
        
    }
    
    private func loadInstaWebPage(_ url: String) {
        let jammiInstaUrl = URL(string: url)
        let request = URLRequest(url: jammiInstaUrl!)
        
        print(view.frame.height)
        
        jammiInstaView.load(request)
    }
    
    private func webViewLayout() {
        view.addSubview(jammiInstaView)
        
        let guide = view.safeAreaLayoutGuide
        
        jammiInstaView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            jammiInstaView.topAnchor.constraint(equalTo: guide.topAnchor),
            jammiInstaView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            jammiInstaView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            jammiInstaView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: 0),
            ])
    }
    
    private func backBtnConfiguration() {
        
        
        jammiInstaView.addSubview(backBtn)
        
        let backBtnImage = UIImage(named: "backBtnImage")
        backBtn.setImage(backBtnImage, for: .normal)
        backBtn.backgroundColor = .white
        
        backBtn.addTarget(self, action: #selector(didTapBackBtn(_:)), for: .touchUpInside)
        
    }
    
    private func backBtnLayout() {
        
        let guide = view.safeAreaLayoutGuide
        
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            backBtn.heightAnchor.constraint(equalToConstant: 40),
            backBtn.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0),
            backBtn.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: 0),
            backBtn.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: 0),
            ])
        
    }
    
    @objc private func didTapBackBtn(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    

}
