//
//  CategoryViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 1/8/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {

    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var categoryDescriptionLabel: UILabel!
    
    let flour = ["All Purpose Flour", "Bread Flour", "Pastry Flour", "Cake Flour", "Rye Flour", "Whole Wheat Flour", "Sorghum Flour", "Almond Flour", "Tapioca Flour", "Cassava Flour", "Garbanzo Bean Flour", "Rice Flour", "Quinoa Flour", "Oat Flour", "Teff Flour", "Millet Flour", "Corn Flour", "Buckwheat Flour", "Hazelnut Flour", "Chestnut Flour", "Potato Flour", "Fava Bean Flour"]
    
    let sugar = ["Cane Sugar", "Powdered Sugar", "Light Brown Sugar", "Dark Brown Sugar", "Agave", "Honey", "Rice Syrup", "Brown Rice Syrup", "Corn Syrup", "Molasses", "Maple Syrup", "Coconut Sugar", "Sucanat", "Demerara", "Raw Cane Sugar", "Glucose Syrup", "Malt Syrup", "High Fructose Corn Syrup", "Invert Sugar", "Beet Sugar", "Dextrose", "Isomalt", "Fructose"]
    
    let fat = ["Butter", "Margarine", "Olive Oil", "Sesame Oil", "Coconut Oil", "Avocado Oil", "Macadamia Nut Oil", "Ghee", "Vegetable Oil", "Canola Oil"]
    
    let eggs = ["Eggs", "Egg White", "Egg Yolk", "Egg Alternatives"]
    
    let dairy = ["Butter", "Milk", "Heavy Cream", "Buttermilk", "Yogurt", "Sour Cream", "Dairy Alternatives"]
    
    let chocolate = ["Cacao", "Cocoa Powder", "Baking Chocolate", "Carob", "Milk Chocolate", "Dark Chocolate", "Semi-Sweet Chocolate", "White Chocolate", "Bittersweet Chocolate"]
    
    let leavening = ["Baking Powder", "Baking Soda", "Yeast"]
    
    let nuts = ["Almonds", "Cashews", "Walnuts", "Peanuts", "Sesame Seeds", "Macadamia Nuts", "Brazil Nuts", "Pumpkin Seeds", "Hazelnuts", "Pecans", "Pine Nuts", "Pistachios"]
    
    let flavors = ["Vanilla", "Mint", "Lemon", "Chocolate", "Orange"]
    
    let thickeners = ["Corn Starch", "Potato Starch", "Gelatin", "Pectin", "Guar Gum", "Xanthan Gum", "Tapioca Starch", "Arrowroot Powder"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
