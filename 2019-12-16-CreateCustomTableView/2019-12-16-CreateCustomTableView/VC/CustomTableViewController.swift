//
//  CustomTableViewController.swift
//  2019-12-16-CreateCustomTableView
//
//  Created by 김광준 on 2019/12/16.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    let cellId: String = "cellId"
    var country: [Country] = [Country]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createCountryArray()
        tableView.register(CountryCell.self, forCellReuseIdentifier: cellId)
    }

    // MARK: - Table view data source
/*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return country.count
    }
    */

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return country.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CountryCell
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

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
