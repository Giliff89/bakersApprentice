//
//  HomeViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 1/8/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    let categories = ["Flour", "Sugar", "Fats", "Eggs", "Dairy", "Chocolate", "Leavening Agents", "Nuts and Seeds", "Flavors", "Thickeners"]

    @IBOutlet weak var categoryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTableView.dataSource = self
        
    }
}

extension HomeViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        let category = categories[indexPath.row]
        cell.textLabel?.text = category
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "categorySegue" {
            
            if let indexPath = self.categoryTableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as? CategoryViewController
                
                let categoryToPass = categories[indexPath.row]
                destinationVC?.categoryChosen = categoryToPass
            
            }
        }
    }
}
