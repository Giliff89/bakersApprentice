//
//  DetailViewController.swift
//  bakers-apprentice
//
//  Created by gina iliff on 1/8/18.
//  Copyright © 2018 gina iliff. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    @IBOutlet weak var itemAlternativesLabel: UILabel!
    @IBOutlet weak var itemUsesLabel: UILabel!
    
    var ingredientChosen: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemNameLabel.text = ingredientChosen
    }

}
