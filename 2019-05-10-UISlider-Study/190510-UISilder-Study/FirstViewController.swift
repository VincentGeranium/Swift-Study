//
//  ViewController.swift
//  190510-UISilder-Study
//
//  Created by 김광준 on 10/05/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // Slider init
    var redSlider = UISlider()
    var blueSlider = UISlider()
    var greenSlider = UISlider()
    
    // Label init
    var redLabel = UILabel()
    var blueLabel = UILabel()
    var greenLabel = UILabel()
    
    // Button init
    var changeBtn = UIButton()
    
    // Singleton
    var firstVCSingleton = Singleton.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewConfiguration()

    }

    func viewConfiguration() {
        
        //redSlider
        redSlider.frame = CGRect(x: 30, y: 140, width: view.frame.width - 60, height: 30)
        redSlider.addTarget(self, action: #selector(sliderFunctions(_:)), for: .valueChanged)
        view.addSubview(redSlider)
        
        //blueSlider
        blueSlider.frame = CGRect(x: 30, y: 240, width: view.frame.width - 60, height: 30)
        blueSlider.addTarget(self, action: #selector(sliderFunctions(_:)), for: .valueChanged)
        view.addSubview(blueSlider)
        
        //greenSlider
        greenSlider.frame = CGRect(x: 30, y: 340, width: view.frame.width - 60, height: 30)
        greenSlider.addTarget(self, action: #selector(sliderFunctions(_:)), for: .valueChanged)
        view.addSubview(greenSlider)
        
        //redLabel
        redLabel.frame = CGRect(x: 30, y: 100, width: view.frame.width - 60, height: 30)
        redLabel.backgroundColor = .red
        redLabel.textColor = .white
        redLabel.text = "red"
        view.addSubview(redLabel)
        
        //blueLabel
        blueLabel.frame = CGRect(x: 30, y: 200, width: view.frame.width - 60, height: 30)
        blueLabel.backgroundColor = .blue
        blueLabel.textColor = .white
        blueLabel.text = "blue"
        view.addSubview(blueLabel)
        
        //greenLabel
        greenLabel.frame = CGRect(x: 30, y: 300, width: view.frame.width - 60, height: 30)
        greenLabel.backgroundColor = .green
        greenLabel.textColor = .white
        greenLabel.text = "green"
        view.addSubview(greenLabel)
        
        //Button
        changeBtn.frame = CGRect(x: view.center.x - 100, y: 450, width: 200, height: 70)
        changeBtn.backgroundColor = .black
        changeBtn.addTarget(self, action: #selector(didTapBtn(_:)), for: .touchUpInside)
        changeBtn.setTitle("Button", for: .normal)
        changeBtn.setTitleColor(.white, for: .normal)
        view.addSubview(changeBtn)
    }
    
    @objc func didTapBtn(_ sender: UIButton) {
        let secondVC = SecondViewController()
        present(secondVC, animated: true)
    }
    
    @objc func sliderFunctions(_ sender: UISlider) {
        
        switch sender {
        case redSlider:
            firstVCSingleton.redSliderValue = redSlider.value
        case blueSlider:
            firstVCSingleton.blueSliderValue = blueSlider.value
        case greenSlider:
            firstVCSingleton.greenSliderValue = greenSlider.value
        default:
            break
        }
    }
}

