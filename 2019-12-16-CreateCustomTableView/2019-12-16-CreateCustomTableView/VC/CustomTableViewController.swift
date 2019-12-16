//
//  CustomTableViewController.swift
//  2019-12-16-CreateCustomTableView
//
//  Created by 김광준 on 2019/12/16.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    var country: [Country] = [Country]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createCountryArray()
        tableView.register(CountryCell.self, forCellReuseIdentifier: CountryCell.cellId)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return country.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CountryCell.cellId, for: indexPath) as? CountryCell else {
            return UITableViewCell()
        }
        
        
        
        let currentLastItem = country[indexPath.row]
        
        cell.countryData = currentLastItem
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func createCountryArray() {
        country.append(Country(countryName: "KR", flagImage: UIImage(named: "flag_kr")!))
        country.append(Country(countryName: "GE", flagImage: UIImage(named: "flag_de")!))
        country.append(Country(countryName: "FR", flagImage: UIImage(named: "flag_fr")!))
        country.append(Country(countryName: "IT", flagImage: UIImage(named: "flag_it")!))
    }
}
