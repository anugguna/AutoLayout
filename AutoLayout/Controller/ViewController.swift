//
//  ViewController.swift
//  AutoLayout
//
//  Created by guna.vendina on 26/07/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var styleOutletsCollection: [UIButton]!
    @IBOutlet weak var buttonAOutlet: UIButton!
    @IBOutlet weak var buttonCOutlet: UIButton!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 11
            button.layer.borderColor = UIColor.brown.cgColor
            button.layer.borderWidth = 2
            
        }
    }

    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonCOutlet.isHidden = false
        self.buttonDOutlet.isHidden = false
        self.buttonEOutlet.isHidden = false
        self.buttonAOutlet.setImage(UIImage(systemName: "no.image"), for: .normal)
        self.buttonCOutlet.backgroundColor = #colorLiteral(red: 0.2938342207, green: 0.8516694493, blue: 0.9358661482, alpha: 1)
        self.buttonDOutlet.backgroundColor = #colorLiteral(red: 0.2708843913, green: 0.7571885466, blue: 0.8270784575, alpha: 1)
        self.buttonEOutlet.backgroundColor = #colorLiteral(red: 0.172448346, green: 0.6291153209, blue: 0.5037078612, alpha: 1)
        
        
    }
    
    @IBAction func buttonBTapped(_ sender: Any) {
        navigationItem.title = "Button B"
        self.buttonCOutlet.isHidden = true
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.isHidden = true
        self.buttonAOutlet.setImage(UIImage(systemName: "trash.fill"), for: .normal)
    }

    @IBAction func buttonATapped(_ sender: Any) {
        self.buttonCOutlet.backgroundColor = UIColor.white
        self.buttonDOutlet.backgroundColor = UIColor.white
        self.buttonEOutlet.backgroundColor = UIColor.white
    }
}

