//
//  ViewController.swift
//  AutoLayout-Assignment
//
//  Created by 김광준 on 09/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let view01 = UIView()
    private let view02 = UIView()
    private let view03 = UIView()
    private let view04 = UIView()
    private let view05 = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view01.backgroundColor = .black
        view02.backgroundColor = .black
        view03.backgroundColor = .black
        view04.backgroundColor = .black
        view05.backgroundColor = .black
        
        view.addSubview(view01)
        view.addSubview(view02)
        view.addSubview(view03)
        view.addSubview(view04)
        view.addSubview(view05)
        
        
       activateLayoutAnchors()
       
        
    }
    

    private func activateLayoutAnchors() {
        
        let margin:CGFloat = 20
        let padding:CGFloat = 8
//        var widhtView02 = (view01.bounds.width * 0.7) - 1
//        var widhtView03 = (view02.bounds.width * 0.7) - 2
//        var widhtView04 = (view03.bounds.width * 0.7) - 3
//        var widhtView05 = (view04.bounds.width * 0.7) - 4
        
        
        
        
        
        
        
        view01.translatesAutoresizingMaskIntoConstraints = false
        view01.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        view01.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin).isActive = true
        view01.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        view01.widthAnchor.constraint(greaterThanOrEqualTo: view02.widthAnchor, multiplier: 0.7, constant: 1).isActive = true
//        view01.centerYAnchor.self
//        view01.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height - 210)).isActive = true
        
        view02.translatesAutoresizingMaskIntoConstraints = false
        view02.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        view02.leadingAnchor.constraint(equalTo: view01.trailingAnchor, constant: padding).isActive = true
        view02.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view02.widthAnchor.constraint(equalTo: view01.widthAnchor, multiplier: 0.7, constant: -1).isActive = true
//        view02.widthAnchor.constraint(equalToConstant: widhtView02).isActive = true
//        view02.centerYAnchor.constraint(equalTo: view01.centerYAnchor).isActive = true
//        view02.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height - 210)).isActive = true
        
        view03.translatesAutoresizingMaskIntoConstraints = false
        view03.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        view03.leadingAnchor.constraint(equalTo: view02.trailingAnchor, constant: padding).isActive = true
        view03.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view03.widthAnchor.constraint(greaterThanOrEqualTo: view02.widthAnchor, multiplier: 0.7, constant: -1).isActive = true
//        view03.centerYAnchor.constraint(equalTo: view02.centerYAnchor).isActive = true
//        view03.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height - 210)).isActive = true
//        view03.widthAnchor.constraint(equalToConstant: widhtView03).isActive = true
        
        
        view04.translatesAutoresizingMaskIntoConstraints = false
        view04.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        view04.leadingAnchor.constraint(equalTo: view03.trailingAnchor, constant: padding).isActive = true
        view04.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view04.widthAnchor.constraint(greaterThanOrEqualTo: view03.widthAnchor, multiplier: 0.7, constant: -1).isActive = true
//        view04.centerYAnchor.constraint(equalTo: view03.centerYAnchor).isActive = true
//        view04.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height - 210)).isActive = true
//        view04.widthAnchor.constraint(equalToConstant: widhtView04).isActive = true
        
        view05.translatesAutoresizingMaskIntoConstraints = false
        view05.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        view05.leadingAnchor.constraint(equalTo: view04.trailingAnchor, constant: padding).isActive = true
        view05.heightAnchor.constraint(equalToConstant: 150).isActive = true
        view05.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        view05.widthAnchor.constraint(greaterThanOrEqualTo: view04.widthAnchor, multiplier: 0.7, constant: -1).isActive = true
//        view05.widthAnchor.constraint(equalToConstant: widhtView05).isActive = true
//        view05.centerYAnchor.constraint(equalTo: view04.centerYAnchor).isActive = true
//        view05.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.height - 210)).isActive = true
    }


}

