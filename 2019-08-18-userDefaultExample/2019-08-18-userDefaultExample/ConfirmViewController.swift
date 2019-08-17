//
//  ConfirmViewController.swift
//  2019-08-18-userDefaultExample
//
//  Created by 김광준 on 18/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    let idLabel = UILabel()
    let pwLabel = UILabel()
    let dismissBtn = UIButton()
    
    let ud = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addViews()
        setupLayout()
        setupConfigure()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    private func addViews() {
        view.addSubview(idLabel)
        view.addSubview(pwLabel)
        view.addSubview(dismissBtn)
    }
    
    private func setupLayout() {
        let guide = view.safeAreaLayoutGuide
        
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: guide.topAnchor, constant: 50),
            idLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 50),
            idLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -50),
            idLabel.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        pwLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pwLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 50),
            pwLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 50),
            pwLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -50),
            pwLabel.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        dismissBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dismissBtn.topAnchor.constraint(equalTo: pwLabel.bottomAnchor, constant: 50),
            dismissBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissBtn.widthAnchor.constraint(equalToConstant: 100),
            dismissBtn.heightAnchor.constraint(equalToConstant: 50),
            ])
        
    }
    
    private func setupConfigure() {
        idLabel.layer.borderWidth = 1
        idLabel.layer.borderColor = UIColor.black.cgColor
        idLabel.font = UIFont.systemFont(ofSize: 20)
        idLabel.textAlignment = .center
        
        guard let id = ud.string(forKey: "id") else { return }
        idLabel.text = id
        
        
        pwLabel.layer.borderWidth = 1
        pwLabel.layer.borderColor = UIColor.black.cgColor
        pwLabel.font = UIFont.systemFont(ofSize: 20)
        pwLabel.textAlignment = .center
        
        guard let pw = ud.string(forKey: "pw") else { return }
        pwLabel.text = pw
        
        
        dismissBtn.setTitle("dismissBtn", for: .normal)
        dismissBtn.setTitleColor(.red, for: .normal)
        dismissBtn.layer.borderWidth = 1
        dismissBtn.layer.borderColor = UIColor.red.cgColor
        dismissBtn.layer.cornerRadius = 5
        dismissBtn.addTarget(self, action: #selector(didTapDismissBtn(_:)), for: .touchUpInside)
        
    }
    
    @objc private func didTapDismissBtn(_ sender: UIButton) {
        presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    

  

}
