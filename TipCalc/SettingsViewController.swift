//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by thien on 5/2/16.
//  Copyright © 2016 thien. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percentageSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        let defaultsPercentage = NSUserDefaults.standardUserDefaults()
        let defaultIndex = defaultsPercentage.integerForKey("defaults_percentage")
        percentageSegment.selectedSegmentIndex = defaultIndex

    }
    @IBAction func onChanged(sender: AnyObject) {
        //setup default percentage
        
        let defaultIndex = percentageSegment.selectedSegmentIndex
        let defaultsPercentage = NSUserDefaults.standardUserDefaults()
        defaultsPercentage.setInteger(defaultIndex, forKey: "defaults_percentage")
        defaultsPercentage.synchronize()
    }
}
