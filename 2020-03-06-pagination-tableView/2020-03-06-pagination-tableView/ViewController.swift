//
//  ViewController.swift
//  2020-03-06-pagination-tableView
//
//  Created by 김광준 on 2020/03/06.
//  Copyright © 2020 VincentGeranium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainTableView: UITableView = {
        let mainTableView: UITableView = UITableView()
        mainTableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.cellId)
        mainTableView.rowHeight = 50
        mainTableView.backgroundColor = .systemGray
        return mainTableView
    }()
    
    var recordsArray: [Int] = []
    var apiLimit = 20
    let serverTotalEntries = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        view.backgroundColor = .systemPink
        
        setupMainTableView()
        
        /// fill the recordsArray
        var index = 0
        while index < apiLimit {
            recordsArray.append(index)
            index += 1
        }
    }
    
    private func setupMainTableView() {
        view.addSubview(mainTableView)
        mainTableView.translatesAutoresizingMaskIntoConstraints = false
        let guide = self.view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: guide.topAnchor),
            mainTableView.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            mainTableView.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            mainTableView.bottomAnchor.constraint(equalTo: guide.bottomAnchor),
        ])
    }
    
    private enum cellError: Error {
        case returnError
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.cellId, for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        cell.mainLabelText = "Row \(recordsArray[indexPath.row])"
//        print(cell.bounds.height)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == recordsArray.count - 1 {
            // last cell load more contents
            if recordsArray.count < serverTotalEntries {
                // need bring more records as there are some pending records available
                var index = recordsArray.count
                apiLimit = index + 20
                while index < apiLimit {
                    recordsArray.append(index)
                    index = index + 1
                }
                self.perform(#selector(loadData), with: nil, afterDelay: 1.0)
            }
        }
    }
    
    @objc func loadData() {
        mainTableView.reloadData()
    }
}

