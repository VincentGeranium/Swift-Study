//
//  MainViewController.swift
//  2019-07-02-kakaoSDK
//
//  Created by 김광준 on 03/07/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet private weak var thumbnailImageView: UIImageView!
    @IBOutlet private weak var profileImageView: UIImageView!
    @IBOutlet private weak var nickNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadProfile()
        memoAPI()
    }
    
    func memoAPI() {
        let memoUrl = URL(string: "https://www.google.co.kr/")!
        KOSessionTask.talkMemoSend(with: memoUrl) { (error) in
            if let error = error {
                return print(error.localizedDescription)
            }
            print("success")
        }
    }
    
    func loadProfile() {
        KOSessionTask.userMeTask { [weak self] (error, userMe) in
            if let error = error {
                return print(error.localizedDescription)
            }
            guard let me = userMe,
            let nickName = me.nickname,
            let profileImageLink = me.profileImageURL,
            let thumbnailImageLink = me.thumbnailImageURL
                else { return }
            print(me)
            self?.nickNameLabel.text = nickName
            
            let imageLinks = [thumbnailImageLink, profileImageLink]
            for url in imageLinks {
                URLSession.shared.dataTask(with: url, completionHandler: { (data, res, error) in
                    if let error = error {
                        return print(error.localizedDescription)
                    }
                    guard let data = data, let image = UIImage(data: data) else { return
                    }
                    DispatchQueue.main.async {
                        if url == thumbnailImageLink {
                            self?.thumbnailImageView.image = image
                        } else {
                            self?.profileImageView.image = image
                        }
                    }
                }).resume()
            }
        }
    }
    
    @IBAction private func logoutButtonDidTap(_ sender: Any) {
        KOSession.shared()?.logoutAndClose { (success, error) -> Void in
            if let error = error {
                return print(error.localizedDescription)
            }
            // Logout Success
            AppDelegate.instance.setupRootViewController()
        }
    }
}
