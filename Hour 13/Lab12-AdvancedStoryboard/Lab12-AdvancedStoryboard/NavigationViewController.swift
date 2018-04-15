//
//  NavigationViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user135477 on 4/14/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    var firstName:String = ""
    var middleName:String = ""
    var lastName:String  = ""
    
    var addressLn1:String = ""
    var addressLn2:String = ""
    var city:String = ""
    var state:String = ""
    var zip:String = ""
    var email:String = ""
    
    var viewIndex:Int = 1
    
    
    
    func informationMessage() -> String {
        
        
        return """
        Name
        \(firstName) \(middleName) \(lastName)
        
        Address
        \(addressLn1)
        \(addressLn2)
        \(city), \(state) \(zip)
        
        Email
        \(email)
        """
        
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
