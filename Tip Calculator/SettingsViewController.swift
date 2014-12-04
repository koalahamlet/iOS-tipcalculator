//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Michael Huff on 12/3/14.
//  Copyright (c) 2014 Koalafied Development. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipSettingsControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var defaults = NSUserDefaults.standardUserDefaults()
        tipSettingsControl.selectedSegmentIndex = defaults.integerForKey("selectedSegment")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onValueChanged(sender: AnyObject) {
        var defaults = NSUserDefaults.standardUserDefaults()

        var selectedSegment = tipSettingsControl.selectedSegmentIndex
        defaults.setInteger(selectedSegment, forKey: "selectedSegment")
        defaults.synchronize()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
