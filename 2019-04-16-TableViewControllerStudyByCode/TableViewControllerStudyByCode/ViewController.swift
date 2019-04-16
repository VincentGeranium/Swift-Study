//
//  ViewController.swift
//  TableViewControllerStudyByCode
//
//  Created by 김광준 on 16/04/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let arr: Array<String> = ["A","B","C","D","E"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableView()
        
    }
    
    func setUpTableView() {
        let tableView = UITableView()
        tableView.frame = view.frame
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
}

