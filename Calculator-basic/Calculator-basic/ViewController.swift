//
//  ViewController.swift
//  Calculator-basic
//
//  Created by 김광준 on 19/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstOperand: UITextField!
    
    
    @IBOutlet var operatorTextField: UITextField!
    
    
    @IBOutlet var secondOperand: UITextField!
    
    
    @IBOutlet var confirmButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }
    
    
    @IBAction func didTabconfirmButton(_ sender: Any) {
        
        var firstOperNum = Double(firstOperand.text!)!
        var secondOperNum = Double(secondOperand.text!)!
        let alert = UIAlertController(title: "결과값",
                                      message: "",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: false, completion: nil)
        
        if firstOperand.text is String {
            
        }
        
        
        switch operatorTextField.text {
        case "+" :
            var sum = firstOperNum + secondOperNum
            alert.message = String(sum)
        case "-" :
            var sub = firstOperNum - secondOperNum
            alert.message = String(sub)
        case "/" :
            var div = firstOperNum / secondOperNum
            alert.message = String(div)
        case "*" :
            var mul = firstOperNum * secondOperNum
            alert.message = String(mul)
        default :
            alert.message = "올바른 연산자를 입력해 주세요"
        
        }
    }
    

}

