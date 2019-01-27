//
//  ViewController.swift
//  tipper
//
//  Created by Jay Arellano on 1/23/19.
//  Copyright © 2019 Jay Arellano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var finalTotalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var settingsControl: UISegmentedControl!
    @IBOutlet weak var changeSettingsField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        
        print("tapping on main view")
        view.endEditing(true);
        //tipControl.setTitle("18%", forSegmentAt: 1)
        
    }
    @IBAction func settingsOnTap(_ sender: Any){
        print("tapping on settings view")
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        // calculate the tip an total
        let tipPercentages = [0.1, 0.15, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // update tip and total label
        tipLabel.text = String(format: "$%.2f", tip)
        finalTotalLabel.text = String(format: "$%.2f", total)
        
    }
}

