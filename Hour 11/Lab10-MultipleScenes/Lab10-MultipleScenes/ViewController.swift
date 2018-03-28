//
//  ViewController.swift
//  Lab10-MultipleScenes
//
//  Created by user135477 on 3/28/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var nameInput: UITextField!
    
    
    @IBAction func exitToHere(sender:UIStoryboardSegue){
        //No Code Needed!
        
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        nameInput.resignFirstResponder()
        
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

