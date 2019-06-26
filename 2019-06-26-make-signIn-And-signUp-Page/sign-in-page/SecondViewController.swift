//
//  SecondViewController.swift
//  sign-in-page
//
//  Created by 김광준 on 26/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let signUpTitleLbl = UILabel()
    
    let signUpIdLbl = UILabel()
    let signUpIdTxtField = UITextField()
    let signUpIdUnderLineLbl = UILabel()
    
    let nicknameTitleLbl = UILabel()
    let nicknameTxtField = UITextField()
    let nicknameUnderLineLbl = UILabel()
    
    let phoneNumberTitleLbl = UILabel()
    let phoneNumberTxtField = UITextField()
    let phoneNumberUnderLineLbl = UILabel()
    
    let signUpPwLbl = UILabel()
    let signUpPwTxtField = UITextField()
    let signUpPwUnderLineLbl = UILabel()
    
    let confirmPwLbl = UILabel()
    let confirmPwTxtField = UITextField()
    let confirmPwUnderLineLbl = UILabel()
    
    let signUpBtn = UIButton()
    
    let cancelBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.5843137255, blue: 0.6117647059, alpha: 1)
        
        signUpTitleLblConfiguration()
        signUpTitleLblLayout()
        
        signUpIdLblConfiguration()
        signUpIdLblLayout()
        
        signUpIdTextFieldConfiguration()
        signUpIdTextFieldLayout()
        
        signUpIdUnderLineLblConfiguration()
        signUpIdUnderLineLblLayout()
        
        nicknameTitleLblConfiguration()
        nicknameLayout()
        
        nicknameTxtFieldConfiguration()
        nicknameTxtFieldLayout()
        
        nicknameUnderLineLblConfiguration()
        nicknameUnderLineLblLayout()
        
        phoneNumberTitleLblConfiguration()
        phoneNumberTitleLblLayout()
        
        phoneNumberTxtFieldConfiguration()
        phoneNumberTxtFieldLayout()
        
        phoneNumberUnderLineLblConfiguration()
        phoneNumberUnderLineLblLayout()
        
        signUpPwTitleLblConfiguration()
        signUpPwTitleLblLayout()
        
        signUpPwTxtFieldConfiguration()
        signUpPwTxtFieldLayout()
        
        signUpPwUnderLineLblConfiguration()
        signUpPwUnderLineLblLayout()
        
        confirmPwTitleLblConfiguration()
        confirmPwTitleLblLayout()
        
        confirmPwTxtFieldConfiguration()
        confirmPwTxtFieldLayout()
        
        confirmPwUnderLineLblConfiguration()
        confirmPwUnderLineLblLayout()
        
        signUpBtnConfiguration()
        signUpBtnLayout()
        
        cancelBtnConfiguration()
        cancelBtnLayout()
        
    }

    // 화면 상단 회원가입 타이틀 레이블 기본 구성 사항
    private func signUpTitleLblConfiguration() {
        signUpTitleLbl.text = "회원가입"
        signUpTitleLbl.textColor = .white
        signUpTitleLbl.font = UIFont.boldSystemFont(ofSize: 30)
        signUpTitleLbl.backgroundColor = .clear
        signUpTitleLbl.textAlignment = .left
        
        self.view.addSubview(signUpTitleLbl)
    }
    
    // 화면 상단 회원가입 타이틀 레이블 오토 레이아웃
    private func signUpTitleLblLayout() {
        signUpTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        signUpTitleLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        signUpTitleLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpTitleLbl.widthAnchor.constraint(equalToConstant: 120).isActive = true
        signUpTitleLbl.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 아이디 타이틀 레이블 기본 구성 사항
    private func signUpIdLblConfiguration() {
        
        signUpIdLbl.text = "아이디"
        signUpIdLbl.textColor = .white
        signUpIdLbl.font = UIFont.boldSystemFont(ofSize: 15)
        signUpIdLbl.backgroundColor = .clear
        signUpIdLbl.textAlignment = .left
        
        self.view.addSubview(signUpIdLbl)
    }
    
    // 아이디 타이틀 레이블 오토 레이아웃
    private func signUpIdLblLayout() {
        
        signUpIdLbl.translatesAutoresizingMaskIntoConstraints = false
        
        signUpIdLbl.topAnchor.constraint(equalTo: signUpTitleLbl.bottomAnchor, constant: 40).isActive = true
        signUpIdLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpIdLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        signUpIdLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
    // 아이디 입력 텍스트 필드 기본 구성 사항
    private func signUpIdTextFieldConfiguration() {
        
        signUpIdTxtField.textAlignment = .left
        signUpIdTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        signUpIdTxtField.textColor = .white
        signUpIdTxtField.backgroundColor = .clear
        
        self.view.addSubview(signUpIdTxtField)
        
    }
    
    // 아이디 입력 텍스트 필드 오토 레이아웃
    private func signUpIdTextFieldLayout() {
        
        signUpIdTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        signUpIdTxtField.topAnchor.constraint(equalTo: signUpIdLbl.bottomAnchor, constant: 5).isActive = true
        signUpIdTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpIdTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        signUpIdTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    // 아이디 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func signUpIdUnderLineLblConfiguration() {
        
        signUpIdUnderLineLbl.backgroundColor = .white
        self.view.addSubview(signUpIdUnderLineLbl)
    }
    
    // 아이디 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func signUpIdUnderLineLblLayout() {
        
        signUpIdUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false
        
        signUpIdUnderLineLbl.topAnchor.constraint(equalTo: signUpIdTxtField.bottomAnchor, constant: 5).isActive = true
        signUpIdUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpIdUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        signUpIdUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
    }
    
    // 닉네임 타이틀 레이블 기본 구성 사항
    private func nicknameTitleLblConfiguration() {
        
        nicknameTitleLbl.text = "닉네임"
        nicknameTitleLbl.textColor = .white
        nicknameTitleLbl.font = UIFont.boldSystemFont(ofSize: 15)
        nicknameTitleLbl.backgroundColor = .clear
        nicknameTitleLbl.textAlignment = .left
        
        self.view.addSubview(nicknameTitleLbl)
        
    }
    
    // 닉네임 타이틀 레이블 오토 레이아웃
    private func nicknameLayout() {
        
        nicknameTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        nicknameTitleLbl.topAnchor.constraint(equalTo: signUpIdUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        nicknameTitleLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        nicknameTitleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nicknameTitleLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    // 닉네임 입력 텍스트 필드 기본 구성 사항
    private func nicknameTxtFieldConfiguration() {

        nicknameTxtField.textAlignment = .left
        nicknameTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        nicknameTxtField.textColor = .white
        nicknameTxtField.backgroundColor = .clear
        nicknameTxtField.isSecureTextEntry = true

        self.view.addSubview(nicknameTxtField)
    }

    // 닉네임 입력 텍스트 필드 오토 레이아웃
    private func nicknameTxtFieldLayout() {

        nicknameTxtField.translatesAutoresizingMaskIntoConstraints = false

        nicknameTxtField.topAnchor.constraint(equalTo: nicknameTitleLbl.bottomAnchor, constant: 5).isActive = true
        nicknameTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        nicknameTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        nicknameTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    // 닉네임 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func nicknameUnderLineLblConfiguration() {
        
        nicknameUnderLineLbl.backgroundColor = .white
        self.view.addSubview(nicknameUnderLineLbl)
    }
    
    // 닉네임 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func nicknameUnderLineLblLayout() {
        
        nicknameUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false
        
        nicknameUnderLineLbl.topAnchor.constraint(equalTo: nicknameTxtField.bottomAnchor, constant: 5).isActive = true
        nicknameUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        nicknameUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        nicknameUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    // 핸드폰 번호 타이틀 레이블 기본 구성 사항
    private func phoneNumberTitleLblConfiguration() {
        
        phoneNumberTitleLbl.text = "전화번호"
        phoneNumberTitleLbl.textColor = .white
        phoneNumberTitleLbl.font = UIFont.boldSystemFont(ofSize: 15)
        phoneNumberTitleLbl.backgroundColor = .clear
        phoneNumberTitleLbl.textAlignment = .left
        
        self.view.addSubview(phoneNumberTitleLbl)
        
    }
    
    // 핸드폰 번호 타이틀 레이블 오토 레이아웃
    private func phoneNumberTitleLblLayout() {
        
        phoneNumberTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        phoneNumberTitleLbl.topAnchor.constraint(equalTo: nicknameUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        phoneNumberTitleLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        phoneNumberTitleLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        phoneNumberTitleLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    // 핸드폰 번호 입력 텍스트 필드 기본 구성 사항
    private func phoneNumberTxtFieldConfiguration() {

        phoneNumberTxtField.textAlignment = .left
        phoneNumberTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        phoneNumberTxtField.textColor = .white
        phoneNumberTxtField.backgroundColor = .clear
        phoneNumberTxtField.isSecureTextEntry = true

        self.view.addSubview(phoneNumberTxtField)
    }

    // 핸드폰 번호 입력 텍스트 필드 오토 레이아웃
    private func phoneNumberTxtFieldLayout() {

        phoneNumberTxtField.translatesAutoresizingMaskIntoConstraints = false

        phoneNumberTxtField.topAnchor.constraint(equalTo: phoneNumberTitleLbl.bottomAnchor, constant: 5).isActive = true
        phoneNumberTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        phoneNumberTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        phoneNumberTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

    // 핸드폰 번호 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func phoneNumberUnderLineLblConfiguration() {

        phoneNumberUnderLineLbl.backgroundColor = .white
        self.view.addSubview(phoneNumberUnderLineLbl)
    }

    // 핸드폰 번호 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func phoneNumberUnderLineLblLayout() {

        phoneNumberUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false

        phoneNumberUnderLineLbl.topAnchor.constraint(equalTo: phoneNumberTxtField.bottomAnchor, constant: 5).isActive = true
        phoneNumberUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        phoneNumberUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        phoneNumberUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    // 비밀번호 타이틀 레이블 기본 구성 사항
    private func signUpPwTitleLblConfiguration() {
        
        signUpPwLbl.text = "비밀번호"
        signUpPwLbl.textColor = .white
        signUpPwLbl.font = UIFont.boldSystemFont(ofSize: 15)
        signUpPwLbl.backgroundColor = .clear
        signUpPwLbl.textAlignment = .left
        
        self.view.addSubview(signUpPwLbl)
    }
    
    // 비밀번호 타이틀 레이블 오토 레이아웃
    private func signUpPwTitleLblLayout() {
        
        signUpPwLbl.translatesAutoresizingMaskIntoConstraints = false
        
        signUpPwLbl.topAnchor.constraint(equalTo: phoneNumberUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        signUpPwLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpPwLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        signUpPwLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    // 비밀번호 입력 텍스트 필드 기본 구성 사항
    private func signUpPwTxtFieldConfiguration() {
        
        signUpPwTxtField.textAlignment = .left
        signUpPwTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        signUpPwTxtField.textColor = .white
        signUpPwTxtField.backgroundColor = .clear
        signUpPwTxtField.isSecureTextEntry = true
        
        self.view.addSubview(signUpPwTxtField)
    }
    
    // 비밀번호 입력 텍스트 필드 오토 레이아웃
    private func signUpPwTxtFieldLayout() {
        
        signUpPwTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        signUpPwTxtField.topAnchor.constraint(equalTo: signUpPwLbl.bottomAnchor, constant: 5).isActive = true
        signUpPwTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpPwTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        signUpPwTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    // 비밀번호 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func signUpPwUnderLineLblConfiguration() {

        signUpPwUnderLineLbl.backgroundColor = .white
        self.view.addSubview(signUpPwUnderLineLbl)
    }

    // 비밀번호 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func signUpPwUnderLineLblLayout() {

        signUpPwUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false

        signUpPwUnderLineLbl.topAnchor.constraint(equalTo: signUpPwTxtField.bottomAnchor, constant: 5).isActive = true
        signUpPwUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        signUpPwUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        signUpPwUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    //
    // 비밀번호 확인 타이틀 레이블 기본 구성 사항
    private func confirmPwTitleLblConfiguration() {
        
        confirmPwLbl.text = "비밀번호 확인"
        confirmPwLbl.textColor = .white
        confirmPwLbl.font = UIFont.boldSystemFont(ofSize: 15)
        confirmPwLbl.backgroundColor = .clear
        confirmPwLbl.textAlignment = .left
        
        self.view.addSubview(confirmPwLbl)
        
    }
    
    // 비밀번호 확인 타이틀 레이블 오토 레이아웃
    private func confirmPwTitleLblLayout() {
        
        confirmPwLbl.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPwLbl.topAnchor.constraint(equalTo: signUpPwUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        confirmPwLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        confirmPwLbl.widthAnchor.constraint(equalToConstant: 100).isActive = true
        confirmPwLbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    // 비밀번호 확인 입력 텍스트 필드 기본 구성 사항
    private func confirmPwTxtFieldConfiguration() {
        
        confirmPwTxtField.textAlignment = .left
        confirmPwTxtField.font = UIFont.boldSystemFont(ofSize: 25)
        confirmPwTxtField.textColor = .white
        confirmPwTxtField.backgroundColor = .clear
        confirmPwTxtField.isSecureTextEntry = true
        
        self.view.addSubview(confirmPwTxtField)
    }
    
    // 비밀번호 확인 입력 텍스트 필드 오토 레이아웃
    private func confirmPwTxtFieldLayout() {
        
        confirmPwTxtField.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPwTxtField.topAnchor.constraint(equalTo: confirmPwLbl.bottomAnchor, constant: 5).isActive = true
        confirmPwTxtField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        confirmPwTxtField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        confirmPwTxtField.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    // 비밀번호 확인 입력 텍스트 필드 밑 언더라인 기본 구성 사항
    private func confirmPwUnderLineLblConfiguration() {
        
        confirmPwUnderLineLbl.backgroundColor = .white
        self.view.addSubview(confirmPwUnderLineLbl)
    }
    
    // 비밀번호 확인 입력 텍스트 필드 밑 언더라인 오토 레이아웃
    private func confirmPwUnderLineLblLayout() {
        
        confirmPwUnderLineLbl.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPwUnderLineLbl.topAnchor.constraint(equalTo: confirmPwTxtField.bottomAnchor, constant: 5).isActive = true
        confirmPwUnderLineLbl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        confirmPwUnderLineLbl.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        confirmPwUnderLineLbl.heightAnchor.constraint(equalToConstant: 2).isActive = true
    }
    
    // 회원가입 버튼 기본 구성 사항
    private func signUpBtnConfiguration() {
        
        signUpBtn.setTitle("회원가입", for: .normal)
        signUpBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        signUpBtn.backgroundColor = #colorLiteral(red: 0.09411764706, green: 0.5843137255, blue: 0.6117647059, alpha: 1)
        signUpBtn.titleLabel?.textAlignment = .center
        signUpBtn.layer.borderWidth = 3
        signUpBtn.layer.borderColor = UIColor.white.cgColor
        signUpBtn.layer.cornerRadius = 10
        
        signUpBtn.addTarget(self, action: #selector(didTabSignUpBtn(_:)), for: .touchUpInside)
        
        self.view.addSubview(signUpBtn)
    }
    
    // 회원가입 버튼 오토 래이아웃
    private func signUpBtnLayout() {
        
        signUpBtn.translatesAutoresizingMaskIntoConstraints = false
        
        signUpBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        signUpBtn.topAnchor.constraint(equalTo: confirmPwUnderLineLbl.bottomAnchor, constant: 20).isActive = true
        signUpBtn.widthAnchor.constraint(equalToConstant: 394).isActive = true
        signUpBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 회원가입 버튼 액션 구현
    @objc private func didTabSignUpBtn(_ sender: UIButton) {
        print("tapped signInBtn")
    }
    
    // 취소 버튼 기본 구성 사항
    private func cancelBtnConfiguration() {
        
        cancelBtn.setTitle("취소", for: .normal)
        cancelBtn.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        cancelBtn.setTitleColor(.red, for: .normal)
        cancelBtn.backgroundColor = #colorLiteral(red: 0.09555146843, green: 0.5851662755, blue: 0.6102676392, alpha: 1)
        cancelBtn.titleLabel?.textAlignment = .center
        cancelBtn.layer.borderWidth = 3
        cancelBtn.layer.borderColor = UIColor.white.cgColor
        cancelBtn.layer.cornerRadius = 10
        
        cancelBtn.addTarget(self, action: #selector(didTapCancelBtn(_:)), for: .touchUpInside)
        
        self.view.addSubview(cancelBtn)
    }
    
    // 취소 버튼 오토 래이아웃
    private func cancelBtnLayout() {
        
        cancelBtn.translatesAutoresizingMaskIntoConstraints = false
        
        cancelBtn.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        cancelBtn.topAnchor.constraint(equalTo: signUpBtn.bottomAnchor, constant: 5).isActive = true
        cancelBtn.widthAnchor.constraint(equalToConstant: 394).isActive = true
        cancelBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    // 취소 버튼 액션 구현
    @objc private func didTapCancelBtn(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: true)
        print("tapped signUpBtn")
        
    }



    
    
    

}
