//
//  HomeTableViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 2/28/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let categories = ["Flour", "Sugar", "Fats", "Eggs", "Dairy", "Chocolate", "Leavening Agents", "Nuts and Seeds", "Flavors", "Thickeners"]
    
    var categoryToPass:String!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        let category = categories[indexPath.row]
        cell.textLabel?.text = category

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let indexPath = tableView.indexPathForSelectedRow!
        
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        
        categoryToPass = currentCell.textLabel?.text
        
        performSegue(withIdentifier: "categorySegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            let destinationVC = segue.destination as? CategoryViewController
                
            destinationVC?.categoryChosen = categoryToPass
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
