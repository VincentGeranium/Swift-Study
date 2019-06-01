//
//  ViewController.swift
//  music_player_By_code_2
//
//  Created by 김광준 on 01/06/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playPauseButton = UIButton()
    var timePlayLabel = UILabel()
    var musicPlaySlider = UISlider()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(playPauseButton)
        playPauseBtnConfiguration()
        autoLayout()
        
    }
    
    func playPauseBtnConfiguration() {
        
        playPauseButton.setImage(UIImage(named: "button_play"), for: .normal)
        
        playPauseButton.addTarget(self, action: #selector(playPauseBtnAction(_:)), for: .touchUpInside)
        
        
    }
    
    @objc func playPauseBtnAction(_ sender: UIButton) {
        
        let playPauseBtn = playPauseButton
        
        if playPauseBtn.isSelected == true {
            playPauseBtn.setImage(UIImage(named: "button_pause"), for: .normal)
        } else if playPauseBtn.isSelected == false {
            playPauseBtn.setImage(UIImage(named: "button_play"), for: .normal)
        }
        
    }
    
    func autoLayout() {
        playPauseButton.translatesAutoresizingMaskIntoConstraints = false
        timePlayLabel.translatesAutoresizingMaskIntoConstraints = false
        musicPlaySlider.translatesAutoresizingMaskIntoConstraints = false
        
        playPauseButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        playPauseButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        playPauseButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        playPauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        
        
    }


}

