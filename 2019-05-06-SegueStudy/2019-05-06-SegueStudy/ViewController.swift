//
//  ViewController.swift
//  2019-05-06-SegueStudy
//
//  Created by 김광준 on 06/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dogCount: Int = 0
    var catCount: Int = 0
    var birdCount: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "dog":
            if dogCount >= 8 {
                return false
            } else {
                return true
            }
        case "cat":
            if catCount >= 10 {
                return false
            } else {
                return true
            }
        case "bird":
            if birdCount >= 15 {
                return false
            } else {
                return true
            }
        default:
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier {
        case "dog":
            dogCount += 1
            if let temp = segue.destination as? SecondViewController {
                temp.animal = "개"
            }
        case "cat":
            catCount += 1
            if let temp = segue.destination as? SecondViewController {
                temp.animal = "고양이"
            }
        case "bird":
            birdCount += 1
            if let temp = segue.destination as? SecondViewController {
                temp.animal = "새"
            }
        default:
            break
        }
    }
    
    @IBAction func unwindToSecondViewController(_ unwindSegue: UIStoryboardSegue) {
        guard let secondVC = unwindSegue.source as? SecondViewController else { return }
        dogCount += secondVC.count
        catCount += secondVC.count
        birdCount += secondVC.count
        print(dogCount, catCount, birdCount)
    }


}

