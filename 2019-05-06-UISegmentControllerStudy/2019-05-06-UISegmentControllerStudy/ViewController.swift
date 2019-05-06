//
//  ViewController.swift
//  2019-05-06-UISegmentControllerStudy
//
//  Created by 김광준 on 06/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var showSegValueLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func unwindToSecondViewController(_ unwindSegue: UIStoryboardSegue) {
        guard let secondVC = unwindSegue.source as? SecondViewController else { return }
        if secondVC.segBtn.selectedSegmentIndex == -1 {
            
        } else {
            showSegValueLbl.text = secondVC.segBtn.titleForSegment(at: secondVC.segBtn.selectedSegmentIndex)
        }
        
    }


}

