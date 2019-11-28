//
//  SecondViewController.swift
//  NaviControllerMinsExample
//
//  Created by 김광준 on 2019/11/28.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let secondView: SecondView = {
        let secondView: SecondView = SecondView()
        return secondView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        title = "SecondViewController"
        
        addedActionTarget()
    }
    
    // MARK: - loadView
    /// 뷰 컨트롤러 생애주기 중 시작 부분에 위치한 loadView
    /// 뷰 컨트롤러를 메모리에 올리기 전 뷰를 만드는 메서드
    /// 위에서 미리  정의한 secondView 인스턴스를 해당 뷰 컨트롤러의 뷰로 설정
    /// 즉, self.view == secondView 인것이다
    override func loadView() {
        super.loadView()
        view = secondView
    }
   
    private func addedActionTarget() {
        secondView.firstBtn.addTarget(self, action: #selector(didTappedFirstBtn(_:)) , for: .touchUpInside)
        
        secondView.secondBtn.addTarget(self, action: #selector(didTappedSecondBtn(_:)), for: .touchUpInside)
    }
    
    @objc private func didTappedFirstBtn(_ sender: UIButton) {
        print("pushViewControlller -> thirdView")
        let thirdVC = ThirdViewController()
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    @objc private func didTappedSecondBtn(_ sender: UIButton) {
        print("popViewController")
        navigationController?.popViewController(animated: true)
    }

}
