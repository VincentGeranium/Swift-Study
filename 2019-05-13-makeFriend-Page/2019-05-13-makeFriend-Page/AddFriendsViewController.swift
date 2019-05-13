//
//  AddFriendsViewController.swift
//  2019-05-13-makeFriend-Page
//
//  Created by 김광준 on 13/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit

protocol AddFriendsViewControllerDelegate: class {
    func sendData(name: String)
}

class AddFriendsViewController: UIViewController {
    
    var delegate: AddFriendsViewControllerDelegate?
    
    var addFriendsTextField = UITextField()
    var addFriednsBtn = UIButton(type: .system)
    
    var titleView = UIView()
    var isDown = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        viewConfiguration()
        
        navigationItem.title = "친구추가화면"
        
        // navigationItem 의 타이틀을 크게할지 안할지 정하는 메소드
        // .always => always display a large title
        // .automatic => Inherit the display mode from the previous navigation item.
        // .never => Never display a large title.
        navigationItem.largeTitleDisplayMode = .never
    }
    
    func viewConfiguration() {
        // titleView
        titleView.frame = CGRect(x: 10, y: 30, width: view.frame.width, height: 450)
        titleView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(titleView)
        
        //textField
        addFriendsTextField.frame = CGRect(x: 75, y: 300, width: 240, height: 40)
        addFriendsTextField.placeholder = "값을 입력해 주세요"
        addFriendsTextField.textAlignment = .center
        
        // 코드상에서 동적으로 UITextField 를 생성하고, 키보드 입력이 가능하게끔 becomeFirstResponder 호출을 하던 부분
        // becomeFirstResponder() 키보드 호출 코드
        addFriendsTextField.becomeFirstResponder()
        addFriendsTextField.borderStyle = .roundedRect
        titleView.addSubview(addFriendsTextField)
        
        // addButton
        addFriednsBtn.frame = CGRect(x: 150, y: 400, width: 100, height: 40)
        addFriednsBtn.setTitle("친구추가", for: .normal)
        addFriednsBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        addFriednsBtn.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        addFriednsBtn.addTarget(self, action: #selector(didTapAddFriendBtn(_:)), for: .touchUpInside)
        addFriednsBtn.layer.cornerRadius = 10
        titleView.addSubview(addFriednsBtn)
        
    }
    
    @objc func didTapAddFriendBtn(_ sender: UIButton) {
        guard  let friendsNameText = addFriendsTextField.text else { return }
        
        if !friendsNameText.isEmpty {
            
            let addSuccessAlert = UIAlertController(title: "친구 추가 완료", message: "\(friendsNameText)(이)가 추가되었습니다.", preferredStyle: .alert)
            let confirmAlert = UIAlertAction(title: "확인", style: .default) { _ in self.addFriendsTextField.text = ""}
            
            addSuccessAlert.addAction(confirmAlert)
            present(addSuccessAlert, animated: true)
            
            delegate?.sendData(name: friendsNameText)
            
        } else {
            
            let errorAlert = UIAlertController(title: "Error", message: "이름을 입력해주세요", preferredStyle: .alert)
            let confirmErrorAlert = UIAlertAction(title: "확인", style: .default, handler: nil)
            
            errorAlert.addAction(confirmErrorAlert)
            present(errorAlert, animated: true)
            
            print("Error message")
            
        }
    }
    
    
    
}
