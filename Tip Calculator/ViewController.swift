//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Michael Huff on 12/1/14.
//  Copyright (c) 2014 Koalafied Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        println("User edited bill")
        
        var tipPercentages = [0.18,0.2,0.22]
        var tipPercent = tipPercentages[tipControl.selectedSegmentIndex]

        var billAmount = (billField.text as NSString).doubleValue
        
        var tip = billAmount * tipPercent
        var total = billAmount + tip
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    @IBAction func onTap
        (sender: AnyObject)
        {
            view.endEditing(true)
    }

}

