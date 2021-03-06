//
//  FavoriteHouseListViewController.swift
//  FavoriteHouseListProject
//
//  Created by 김광준 on 05/08/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class FavoriteHouseListViewController: UIViewController {
    
    let mainTableView = FavoriteHouseListView()
    var favoriteDataArray = [FavoriteData]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        setupConfigure()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    private func setupLayout() {
        
        let guide = view.safeAreaLayoutGuide
        
        view.addSubview(mainTableView)
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        mainTableView.topAnchor.constraint(equalTo: guide.topAnchor, constant: 0).isActive = true
        mainTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 0).isActive = true
        mainTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: 0).isActive = true
        mainTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: 0).isActive = true
    }
    
    private func setupConfigure() {
        
    }
    
   
    
    
}
