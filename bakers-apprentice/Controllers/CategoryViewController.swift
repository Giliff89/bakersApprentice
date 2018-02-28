//
//  CategoryViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 1/8/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var categoryDescriptionLabel: UILabel!
    
    @IBOutlet weak var itemsInCategoryTableView: UITableView!
    
    var categoryChosen: String!
    
    var categoryList: Array<String> = []
       
    override func viewDidLoad() {
        super.viewDidLoad()

        itemsInCategoryTableView.dataSource = self
        
        categoryNameLabel.text = categoryChosen

//        categoryDescriptionLabel.text = "category description"
        
        if categoryChosen == "Flour" {
            categoryList = flourList.sorted()
            print(categoryList)
        } else if categoryChosen == "Sugar" {
            categoryList = sugarList.sorted()
            print(categoryList)
        } else if categoryChosen == "Fats" {
            categoryList = fatList.sorted()
            print(categoryList)
        } else if categoryChosen == "Eggs" {
            categoryList = eggsList.sorted()
            print(categoryList)
        } else if categoryChosen == "Dairy" {
            categoryList = dairyList.sorted()
            print(categoryList)
        } else if categoryChosen == "Chocolate" {
            categoryList = chocolateList.sorted()
            print(categoryList)
        } else if categoryChosen == "Leavening Agents" {
            categoryList = leaveningList.sorted()
            print(categoryList)
        } else if categoryChosen == "Nuts and Seeds" {
            categoryList = nutsList.sorted()
            print(categoryList)
        } else if categoryChosen == "Flavors" {
            categoryList = flavorsList.sorted()
            print(categoryList)
        } else if categoryChosen == "Thickeners" {
            categoryList = thickenersList.sorted()
            print(categoryList)
        }
    }
}

extension CategoryViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
                let item = categoryList[indexPath.row]
                cell.textLabel?.text = item
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "IngredientSegue" {
            
            if let indexPath = self.itemsInCategoryTableView.indexPathForSelectedRow {
                let destinationVC = segue.destination as? DetailViewController
                
                let ingredientToPass = categoryList[indexPath.row]
                destinationVC?.ingredientChosen = ingredientToPass
                
            }
        }
    }
}
