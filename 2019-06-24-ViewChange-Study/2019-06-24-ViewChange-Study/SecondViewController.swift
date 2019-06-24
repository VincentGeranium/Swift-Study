//
//  SecondViewController.swift
//  2019-06-24-ViewChange-Study
//
//  Created by 김광준 on 24/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let secondVCLbl = UILabel()
    let dismissBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        secondVCLblConfiguration()
        secondVCLblLayout()
        dismissBtnConfiguration()
        dismissBtnLayout()
    }
    
    private func secondVCLblConfiguration() {
        
        secondVCLbl.text = "SecondVC"
        secondVCLbl.textColor = .white
        secondVCLbl.textAlignment = .center
        secondVCLbl.font = UIFont.boldSystemFont(ofSize: 50)
        secondVCLbl.backgroundColor = .black
        
        self.view.addSubview(secondVCLbl)
    }
    
    private func secondVCLblLayout() {
        
        secondVCLbl.translatesAutoresizingMaskIntoConstraints = false
        
        secondVCLbl.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        secondVCLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        secondVCLbl.widthAnchor.constraint(equalToConstant: 300).isActive = true
        secondVCLbl.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    private func dismissBtnConfiguration() {
        
        dismissBtn.setTitle("dismiss Btn", for: .normal)
        dismissBtn.setTitleColor(.black, for: .normal)
        dismissBtn.backgroundColor = .brown
        dismissBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50)
        dismissBtn.titleLabel?.textAlignment = .center
        
        self.view.addSubview(dismissBtn)
    }
    
    private func dismissBtnLayout() {
        
        dismissBtn.translatesAutoresizingMaskIntoConstraints = false
        
        dismissBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        dismissBtn.topAnchor.constraint(equalTo: secondVCLbl.bottomAnchor, constant: 50).isActive = true
        dismissBtn.widthAnchor.constraint(equalToConstant: 300).isActive = true
        dismissBtn.heightAnchor.constraint(equalToConstant: 100).isActive = true
        dismissBtn.addTarget(self, action: #selector(didTapDismissBtn(_:)), for: .touchUpInside)
        }
    
    @objc func didTapDismissBtn(_ sender : UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    

}
