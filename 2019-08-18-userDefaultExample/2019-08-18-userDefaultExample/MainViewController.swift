//
//  MainViewController.swift
//  2019-08-18-userDefaultExample
//
//  Created by 김광준 on 18/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let confirmBtn = UIButton()
    let idTxtField = UITextField()
    let passwordTxtField = UITextField()
    let confirmVC = ConfirmViewController()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        idTxtField.delegate = self
        passwordTxtField.delegate = self
        
        addViews()
        setupLayout()
        setupConfigure()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.idTxtField.becomeFirstResponder()
    }
    
    private func addViews() {
        view.addSubview(confirmBtn)
        view.addSubview(idTxtField)
        view.addSubview(passwordTxtField)
    }
    
    private func setupLayout() {
        let guide = view.safeAreaLayoutGuide
        
        idTxtField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idTxtField.topAnchor.constraint(equalTo: guide.topAnchor, constant: 50),
            idTxtField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 50),
            idTxtField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -50),
            idTxtField.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        passwordTxtField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTxtField.topAnchor.constraint(equalTo: idTxtField.bottomAnchor, constant: 50),
            passwordTxtField.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 50),
            passwordTxtField.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -50),
            passwordTxtField.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        confirmBtn.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmBtn.topAnchor.constraint(equalTo: passwordTxtField.bottomAnchor, constant: 50),
            confirmBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            confirmBtn.widthAnchor.constraint(equalToConstant: 100),
            confirmBtn.heightAnchor.constraint(equalToConstant: 50),
            ])
        
    }
    
    private func setupConfigure() {
        idTxtField.layer.borderWidth = 1
        idTxtField.layer.borderColor = UIColor.black.cgColor
        idTxtField.font = UIFont.systemFont(ofSize: 20)
        idTxtField.placeholder = "input id"
        idTxtField.textAlignment = .center
        
        passwordTxtField.layer.borderWidth = 1
        passwordTxtField.layer.borderColor = UIColor.black.cgColor
        passwordTxtField.font = UIFont.systemFont(ofSize: 20)
        passwordTxtField.placeholder = "input password"
        passwordTxtField.textAlignment = .center
        
        
        confirmBtn.setTitle("confirm", for: .normal)
        confirmBtn.setTitleColor(.red, for: .normal)
        confirmBtn.layer.borderWidth = 1
        confirmBtn.layer.borderColor = UIColor.red.cgColor
        confirmBtn.layer.cornerRadius = 5
        confirmBtn.addTarget(self, action: #selector(didTapConfirmBtn(_:)), for: .touchUpInside)
        
    }
    
    @objc func didTapConfirmBtn(_ sender: UIButton) {
        // userDefault 인스턴스 가져오기
        let ud = UserDefaults.standard
        
        // 값 저장하기
        ud.set(self.idTxtField.text, forKey: "id")
        ud.set(self.passwordTxtField.text, forKey: "pw")
        
        present(confirmVC, animated: true, completion: nil)
        passwordTxtField.resignFirstResponder()
    }
    
}

extension MainViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        idTxtField.tag = 0
        passwordTxtField.tag = 1

        switch textField.tag {
        case 0:
            passwordTxtField.becomeFirstResponder()
        case 1:
            present(confirmVC, animated: true, completion: nil)
        default:
            print("error")
        }
        return true
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//
//        if (textField.isEqual(self.idTxtField)) {
//            passwordTxtField.becomeFirstResponder()
//
//        } else if(textField.isEqual(self.passwordTxtField)) {
//
//           present(confirmVC, animated: true, completion: nil)
//            textField.resignFirstResponder()
//        }
//        return true
//    }
    
}
