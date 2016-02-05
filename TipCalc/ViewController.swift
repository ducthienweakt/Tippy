//
//  ViewController.swift
//  TipCalc
//
//  Created by thien on 5/2/16.
//  Copyright © 2016 thien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var percetageSegment: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
       
    }
    override func viewWillAppear(animated: Bool) {
        //keyboard on alway visible
        billField.becomeFirstResponder()
        //get default tip amount
        let defaultsPercentage = NSUserDefaults.standardUserDefaults()
        let defaultIndex = defaultsPercentage.integerForKey("defaults_percentage")
        percetageSegment.selectedSegmentIndex = defaultIndex
        //animation
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onChangeBillAmount(sender: AnyObject) {
        print("User change the amount")
        
        var percentages=[0.1,0.2,0.3]
        let percentage = percentages[percetageSegment.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tipAmount = billAmount * percentage
        let totalAmount = billAmount + tipAmount
        
        tipLabel.text = String(format: "$%.2f", arguments: [tipAmount])
        totalLabel.text = String(format: "$%.2f", arguments: [totalAmount])
    }

    @IBAction func onTapped(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
}

