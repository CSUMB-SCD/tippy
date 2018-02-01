//
//  ViewController.swift
//  tippy
//
//  Created by Simone Boyd on 1/31/18.
//  Copyright © 2018 Simone Boyd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        let percentages = [0.18,0.2,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill*percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        
        tipLabel.text="$\(tip)"
        totalLabel.text="$\(total)"
    }
}

