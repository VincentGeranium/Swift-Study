//
//  ViewController.swift
//  2019-05-12-Delegate-Study
//
//  Created by 김광준 on 12/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var secondVC: SecondViewController?
    
    
    @IBOutlet weak var firstVCtextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // segue prepare 정의
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstVCSegue" {
            guard let sVC = segue.destination as? SecondViewController else { return }
            
            // secondVC에서 델리게이트를 받겠다고 선언
            sVC.delegate = self
            secondVC = sVC
        }
    }
    
    
    
    // 익스텐션 구현 해야됨!!


    @IBAction func fromSecondVCToFirstVC(_ sender: UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension FirstViewController: SecondViewControllerDelegate {
    func sendText(_ value: String) {
        secondVC?.secondVClbl.text = firstVCtextField.text
    }
    
    
}
