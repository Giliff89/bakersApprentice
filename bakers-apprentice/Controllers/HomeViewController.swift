//
//  HomeViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 1/8/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    let categories = ["Flours", "Sugars", "Fats/Oils", "Eggs", "Milk/Dairy", "Cocoa/Chocolate", "Leavening Agents", "Nuts/Seeds", "Flavors", "Thickeners"]

    @IBOutlet weak var categoryTableView: UITableView!
    
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Add later
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTableView.dataSource = self
        
    }
    
}

