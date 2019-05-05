//
//  ViewController.swift
//  2019-05-04-SegmentSwitchAndButton
//
//  Created by 김광준 on 05/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var presentNumberLbl: UILabel!
    @IBOutlet weak var switchStatementLbl: UILabel!
    @IBOutlet weak var segmentStatementLbl: UILabel!
    
    var presentNumber = 0
    var temp = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    
    @IBAction func didTapSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            segmentStatementLbl.text = "First"
        } else {
            segmentStatementLbl.text = "Second"
        }
    }
    
    @IBAction func didTapPlusBtn(_ sender: UIButton) {
        presentNumber += 1
        presentNumberLbl.text = String(presentNumber)
        presentNumberLbl.textColor = .red
    }
    
    @IBAction func didTapMinusBtn(_ sender: UIButton) {
        presentNumber -= 1
        presentNumberLbl.text = String(presentNumber)
        presentNumberLbl.textColor = .blue
    }
    
    @IBAction func didTapSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            switchStatementLbl.text = "ON"
            switchStatementLbl.textColor = .green
        } else {
            switchStatementLbl.text = "OFF"
            switchStatementLbl.textColor = .black
        }
    }
    
    
    
    
}
