//
//  SecondViewController.swift
//  2019-06-23-testApp
//
//  Created by 김광준 on 23/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    var webView = WKWebView()
    var activityIndicatior = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(webView)
        view.backgroundColor = .black
        
        loadWebPage("https://www.instagram.com/jamminim/")
        
        webViewLayout()
    }
    
    private func webViewLayout() {
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        webView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        
        webView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        webView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    private func loadWebPage(_ url: String) {
        
        let myUrl = URL(string: url)
        
        let myRequest = URLRequest(url: myUrl!)
        
        webView.load(myRequest)
        
    }
    
    // activityIndicatior setting
    func showIndicator() {
        activityIndicatior = UIActivityIndicatorView(style: .whiteLarge)
        activityIndicatior.frame = CGRect(x: self.view.frame.midX - 50, y: self.view.frame.midY - 50, width: 100, height: 100)
        activityIndicatior.color = .red
        activityIndicatior.hidesWhenStopped = true
        activityIndicatior.startAnimating()
        self.view.addSubview(activityIndicatior)
    }
    
    func hideIndicator() {
        self.activityIndicatior.removeFromSuperview()
    }
    
    // WKNavigationDelegate
    @available(iOS 8.0, *)
    public func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        showIndicator()
    }
    
    @available(iOS 8.0, *)
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        hideIndicator()
    }
}
