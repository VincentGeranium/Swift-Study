//
//  ViewController.swift
//  2019-05-13-makeFriend-Page
//
//  Created by 김광준 on 13/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let addVC = AddFriendsViewController()
    var friendsLabel = UILabel()
    var friendsListArr: Array<String> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConfiguration()
        addVC.delegate = self
        
        // navigationBar title
        title = "친구 리스트 화면"
        
        if #available(iOS 11, *) {
            //prefersLargeTitles = navigationBar에 타이틀 제목을 true이면 크게, false이면 작게 표시
            navigationController?.navigationBar.prefersLargeTitles = true
        }
        
        // navigationItem의 barButton 객체 생성
        let barButton = UIBarButtonItem(title: "친구 추가", style: .done, target: self, action: #selector(didTapBarBtn(_:)))
        
        //navigationItem의 barButton을 오른쪽에 생성 =>  navigationItem.rightBarButtonItem, 왼쪽에 생성 =>  navigationItem.leftBarButtonItem
        navigationItem.rightBarButtonItem = barButton

        
    }
    
    func viewConfiguration() {
        friendsLabel.frame = CGRect(x: 40, y: 230, width: 340, height: 400)
        // #colorLiteral() 로 backgroundColor 선택 가능
        // friendsLabel.backgroundColor = #colorLiteral(red: 0.4784313725, green: 0.8078431373, blue: 0.8823529412, alpha: 1)
        friendsLabel.backgroundColor = #colorLiteral(red: 0.9921568627, green: 0.9960784314, blue: 0.5294117647, alpha: 1)
        friendsLabel.text = "#친구를 만들어 넣어주세요"
        //numberOfLines = The maximum number of lines to use for rendering text.
        friendsLabel.numberOfLines = 0
    
        friendsLabel.font = UIFont.boldSystemFont(ofSize: 25)
        friendsLabel.textColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        friendsLabel.textAlignment = .center
        view.addSubview(friendsLabel)
        
    }
    
    @objc func didTapBarBtn(_ sender: Any) {
        navigationController?.pushViewController(addVC, animated: true)
    }
}

extension FirstViewController: AddFriendsViewControllerDelegate{
    func sendData(name: String) {
        friendsListArr.append(name)
        
        var temp: String = ""
        for i in friendsListArr {
            temp += "\(i)\n"
        }
        
        friendsLabel.text = temp
    }
}
