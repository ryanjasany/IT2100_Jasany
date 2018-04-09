//
//  GenericViewController.swift
//  LetsNavigate
//
//  Created by user135477 on 4/9/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBAction func incrementCount(_ sender: Any) {
        
        (parent as!
            CountingNavigationControllerViewController).pushCount =
            (parent as!
                CountingNavigationControllerViewController).pushCount + 1
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let displayCount = (parent as! CountingNavigationControllerViewController).pushCount
        countLabel.text=String(displayCount)
    }
    
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParentViewController {
            (parent as!
                CountingNavigationControllerViewController).pushCount =
                (parent as!
                    CountingNavigationControllerViewController).pushCount - 1
        }
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
