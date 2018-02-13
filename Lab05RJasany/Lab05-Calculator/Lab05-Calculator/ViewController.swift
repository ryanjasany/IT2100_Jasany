//
//  ViewController.swift
//  Lab05-Calculator
//
//  Created by user135477 on 2/12/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userOutput: UILabel!
    
    
    @IBOutlet weak var userInputFirst: UITextField!
    
    
    @IBOutlet weak var userInputSecond: UITextField!
    
    
    
    @IBAction func setOutput(_ sender: Any) {
        
        userOutput.text = userInputFirst.text! + " " + userInputSecond.text!
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

