//
//  ViewController.swift
//  HelloNoun
//
//  Created by user135477 on 2/11/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userOutput: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    
    @IBAction func setOutput(_ sender: AnyObject) {
        userOutput.text=userInput.text
        
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

