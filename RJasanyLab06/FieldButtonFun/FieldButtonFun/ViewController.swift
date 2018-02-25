//
//  ViewController.swift
//  FieldButtonFun
//
//  Created by user135477 on 2/19/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var thePlace: UITextField!
    
    @IBOutlet weak var theVerb: UITextField!
    
    @IBOutlet weak var theNumber: UITextField!
    
    
    @IBOutlet weak var theTemplate: UITextView!
    
    
    @IBOutlet weak var theStory: UITextView!
    
    
    @IBAction func createStory(_ sender: Any) {
        
        theStory.text=theTemplate.text
        theStory.text=theStory.text.replacingOccurrences(of:"<place>", with:thePlace.text!)
        theStory.text=theStory.text.replacingOccurrences(of:"<verb>", with:theVerb.text!)
        theStory.text=theStory.text.replacingOccurrences(of:"<number>", with:theNumber.text!)    }
    @IBAction func hideKeyboard(_ sender: Any) {
        
        thePlace.resignFirstResponder()
        theVerb.resignFirstResponder()
        theNumber.resignFirstResponder()
        theTemplate.resignFirstResponder()
        
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
