//
//  DateChooserViewController.swift
//  DateCalc
//
//  Created by user135477 on 4/2/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class DateChooserViewController: UIViewController {

    @IBAction func setDateTime(_ sender: Any) {
        
        (presentingViewController as!ViewController).calculateDateDifference(chosenDate: (sender as!UIDatePicker).date as NSDate)
        
    }
    
    @IBAction func dismissDateChooser(_ sender: Any) {
        
        dismiss(animated: true,completion: nil)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        (presentingViewController as! ViewController).calculateDateDifference(chosenDate: NSDate())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        super.viewDidLoad()
        
        //preferredContentSize = CGSizeMake(340,380)
        
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
