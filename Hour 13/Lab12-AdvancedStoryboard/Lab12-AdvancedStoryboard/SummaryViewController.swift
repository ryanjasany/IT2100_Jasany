//
//  SummaryViewController.swift
//  Lab12-AdvancedStoryboard
//
//  Created by user135477 on 4/15/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    
    @IBOutlet weak var informationDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        informationDisplay.text = (parent as! NavigationViewController).informationMessage()
        
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
