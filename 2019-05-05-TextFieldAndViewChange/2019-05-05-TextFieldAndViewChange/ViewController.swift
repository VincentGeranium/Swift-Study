//
//  ViewController.swift
//  2019-05-05-TextFieldAndViewChange
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var field: UITextField?
    var label: UILabel?
    var countNumberLbl: UILabel?
    var countNumber: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        mainTextField()
        mainLabel()
        aboutGoToAvc()
        aboutGoToBvc()
        countNumberLblInfo()
    }
    
    func aboutGoToAvc() {
        let goToAvcBtn = UIButton()
        goToAvcBtn.frame = CGRect(x: view.frame.width / 10,
                                  y: view.frame.height / 2,
                                  width: view.frame.width - view.frame.width / 5,
                                  height: 80)
        goToAvcBtn.setTitle("Go To A", for: .normal)
        goToAvcBtn.setTitleColor(.black, for: .normal)
        goToAvcBtn.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        goToAvcBtn.addTarget(self, action: #selector(goToSomeVC(_:)), for: .touchUpInside)
        goToAvcBtn.tag = 0
        view.addSubview(goToAvcBtn)
    }
    
    func aboutGoToBvc() {
        let goToBvcBtn = UIButton()
        goToBvcBtn.frame = CGRect(x: view.frame.width / 10,
                                  y: view.frame.height / 2 + 100,
                                  width: view.frame.width - view.frame.width / 5,
                                  height: 80)
        goToBvcBtn.setTitle("Go To B", for: .normal)
        goToBvcBtn.setTitleColor(.black, for: .normal)
        goToBvcBtn.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        goToBvcBtn.addTarget(self, action: #selector(goToSomeVC(_:)), for: .touchUpInside)
        goToBvcBtn.tag = 1
        view.addSubview(goToBvcBtn)
    }
    
    func mainTextField() {
        let textFieldMain = UITextField(frame: CGRect(x: view.frame.width / 10,
                                                      y: view.frame.height / 4,
                                                      width: view.frame.width - view.frame.width / 5,
                                                      height: 80))
        textFieldMain.textColor = .black
        textFieldMain.textAlignment = .center
        textFieldMain.font = UIFont.systemFont(ofSize: 20)
        textFieldMain.placeholder = "값을 입력해주세요"
        textFieldMain.backgroundColor = .white
        textFieldMain.addTarget(self, action: #selector(editDidBegin(_:)), for: .editingDidBegin)
        textFieldMain.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
        textFieldMain.addTarget(self, action: #selector(editDidEnd(_:)), for: .editingDidEnd)
        textFieldMain.addTarget(self, action: #selector(editEndOnExit(_:)), for: .editingDidEndOnExit) // editingDidEndOnExit 메소드 정의 안해주면 enter 쳐도 아무런 반응 없음
        
        view.addSubview(textFieldMain)
        
        field = textFieldMain
    }
    
    func mainLabel() {
        let lableMain = UILabel() // 위와(mainTextField) 다른 방식으로 인스턴스화 해보기
        lableMain.frame = CGRect(x: view.frame.width / 10,
                                 y: view.frame.height / 6,
                                 width: view.frame.width - view.frame.width / 5,
                                 height: 80)
        lableMain.textAlignment = .center
        lableMain.font = UIFont.systemFont(ofSize: 20)
        lableMain.text = "입력값"
        lableMain.textColor = .black
        view.addSubview(lableMain)
        
        label = lableMain
    }
    
    func countNumberLblInfo() {
        let countNumberLabel = UILabel()
        countNumberLabel.frame = CGRect(x: view.frame.width / 10,
                                        y: view.frame.height / 4 + 130,
                                        width: view.frame.width - view.frame.width / 5,
                                        height: 80)
        countNumberLabel.textColor = .black
        countNumberLabel.textAlignment = .center
        countNumberLabel.font = UIFont.systemFont(ofSize: 40)
        countNumberLabel.text = String(self.countNumber)
        view.addSubview(countNumberLabel)
        
        countNumberLbl = countNumberLabel
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        countNumberLbl?.text = String(self.countNumber)
    }
    
    @objc func editDidBegin( _ sender: UITextField) {
        label?.textColor = .blue
        label?.font = UIFont.systemFont(ofSize: 40)
    }
    
    @objc func editingChanged(_ sender: UITextField) {
        guard let text = sender.text else { return }
        label?.font = UIFont.boldSystemFont(ofSize: 40)
        label?.textColor = .purple
        label?.text = text
    }
    
    @objc func editDidEnd(_ sender: UITextField) {
        label?.textColor = .red
        label?.font = UIFont.systemFont(ofSize: 20)
    }
    @objc func editEndOnExit(_ sender: UITextField) { // enter 쳣을때 구현될 코드
        
    }
    @objc func goToSomeVC(_ sender: UIButton) {
        let aVC = AViewController()
        let bVC = BViewController()
       
        if sender.tag == 0 {
            present(aVC, animated: true, completion: nil)
            aVC.countNumber = self.countNumber
        } else if sender.tag == 1 {
            present(bVC, animated: true, completion: nil)
            bVC.countNumber = self.countNumber
            
        }
    }
}

