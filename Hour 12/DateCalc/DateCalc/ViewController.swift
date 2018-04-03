//
//  ViewController.swift
//  DateCalc
//
//  Created by user135477 on 4/2/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    
    func calculateDateDifference(chosenDate:NSDate){
        
        let todaysDate: NSDate = NSDate()
        let difference:TimeInterval = todaysDate.timeIntervalSince(chosenDate as Date)/86400
        
        let dateFormat:DateFormatter = DateFormatter()
        
        dateFormat.dateFormat = "MMM d, yyyy hh:mm:ssa"
        
        let todaysDateString:String = dateFormat.string(from: todaysDate as Date)
        let chosenDateString:String = dateFormat.string(from: chosenDate as Date)
        
        let differenceOutput:String = NSString(format:"DIfference between chosen date (%@) and today (%@) in days %1.2f",
            chosenDateString, todaysDateString, fabs(difference))as String
        
        outputLabel.text=differenceOutput
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

