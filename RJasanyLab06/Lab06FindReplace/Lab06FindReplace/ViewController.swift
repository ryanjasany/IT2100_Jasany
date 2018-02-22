//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by user135477 on 2/22/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var findInput: UITextField!
    
    @IBOutlet weak var replaceInput: UITextField!
    
    @IBOutlet weak var storyField: UITextView!
    
    
    @IBAction func findReplaceAction(_ sender: Any) {
        
        storyField.text=storyField.text.replacingOccurrences(of: findInput.text!, with:replaceInput.text!)
        
        
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

