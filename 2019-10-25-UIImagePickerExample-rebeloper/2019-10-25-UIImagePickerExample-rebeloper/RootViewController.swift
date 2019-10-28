//
//  ViewController.swift
//  2019-10-25-UIImagePickerExample-rebeloper
//
//  Created by 김광준 on 2019/10/25.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit
import TinyConstraints

class RootViewController: UIViewController {
    
    let profileImageViewWidth: CGFloat = 100
    
    lazy var originalImg: UIImage = {
        var ogImg = UIImage()
        if let originalImage: UIImage = UIImage.init(named: "DefaultProfileImage")
        {
            ogImg = originalImage
            print("Success : 이미지를 성공적으로 불러옴")
        } else {
            print("Error : 이미지 불러오기 오류")
        }
        return ogImg
    }()
    
    lazy var profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = originalImg.withRenderingMode(.alwaysOriginal)
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = profileImageViewWidth / 2
        iv.layer.masksToBounds = true
        return iv
    }()
    
    lazy var profileImageButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .clear
        button.layer.cornerRadius = profileImageViewWidth / 2
        button.layer.masksToBounds = true
        button.addTarget(self, action: #selector(profileImageButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc private func profileImageButtonTapped() {
        print("Tapped Button")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        setupViews()
        
    }
    
    fileprivate func setupViews() {
        self.view.backgroundColor = .white
        addViews()
        constrainViews()
    }
    
    fileprivate func addViews() {
        view.addSubview(profileImageView)
        view.addSubview(profileImageButton)
    }
    
    fileprivate func constrainViews() {
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let guide = view.safeAreaLayoutGuide
        
        let profileImageViewTop: NSLayoutConstraint
        profileImageViewTop = profileImageView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 36)
        
        let profileImageViewCenterX: NSLayoutConstraint
        profileImageViewCenterX = profileImageView.centerXAnchor.constraint(equalTo: guide.centerXAnchor)
        
        let profileImageViewWidthAnchor: NSLayoutConstraint
        profileImageViewWidthAnchor = profileImageView.widthAnchor.constraint(equalToConstant: profileImageViewWidth)
        
        
        let profileImageViewHeightAnchor: NSLayoutConstraint
        profileImageViewHeightAnchor = profileImageView.heightAnchor.constraint(equalToConstant: profileImageViewWidth)
        
        
        profileImageViewTop.isActive = true
        profileImageViewCenterX.isActive = true
        profileImageViewWidthAnchor.isActive = true
        profileImageViewHeightAnchor.isActive = true
        
        profileImageButton.edges(to: profileImageView)
    }
    
    
}

