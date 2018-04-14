//
//  GenericViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user135477 on 4/14/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    //initial outlets
    
    @IBOutlet weak var firstInput: UITextField!
    
    @IBOutlet weak var middleInput: UITextField!
    
    @IBOutlet weak var lastInput: UITextField!
    
    // second outlets
    
    @IBOutlet weak var addressLn1Input: UITextField!
    
    @IBOutlet weak var addressLn2Input: UITextField!
    
    @IBOutlet weak var cityInput: UITextField!
    
    @IBOutlet weak var stateInput: UITextField!
    
    
    @IBOutlet weak var zipInput: UITextField!
    
    @IBOutlet weak var emailInput: UITextField!
    
    //Third outlets
    
    @IBOutlet weak var informationOutlet: UITextView!
    
    //Actions
    
    @IBAction func updateInformation(_ sender: Any) {
        
        (parent as! NavigationViewController).firstName = firstInput.text!
        (parent as! NavigationViewController).middleName = middleInput.text!
        (parent as! NavigationViewController).lastName = lastInput.text!
        
    }
    
    
    @IBAction func updateMoreInformation(_ sender: Any) {
        
        (parent as! NavigationViewController).addressLn1 = addressLn1Input.text!
        (parent as! NavigationViewController).addressLn2 = addressLn2Input.text!
        (parent as! NavigationViewController).city = cityInput.text!
        (parent as! NavigationViewController).state = stateInput.text!
        (parent as! NavigationViewController).zip = zipInput.text!
        (parent as! NavigationViewController).email = emailInput.text!
        
        
    }
    
    
    @IBAction func hideKeyboard(_ sender: Any) {
        firstInput.resignFirstResponder()
        middleInput.resignFirstResponder()
        lastInput.resignFirstResponder()
//        addressLn1Input.resignFirstResponder()
//        addressLn2Input.resignFirstResponder()
//        cityInput.resignFirstResponder()
//        stateInput.resignFirstResponder()
//        zipInput.resignFirstResponder()
//        emailInput.resignFirstResponder()
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
