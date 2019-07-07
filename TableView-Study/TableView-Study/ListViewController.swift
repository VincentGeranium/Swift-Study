//
//  ViewController.swift
//  TableView-Study
//
//  Created by 김광준 on 05/07/2019.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

final class ListViewController: UIViewController {
    
    var viewControllers: [UIViewController] = []
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viewControllers = [
            TableViewBasic(),
        ]
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewControllers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "list", for: indexPath)
        cell.textLabel?.text = "\(viewControllers[indexPath.row])"
        return cell
    }
}

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = viewControllers[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}


