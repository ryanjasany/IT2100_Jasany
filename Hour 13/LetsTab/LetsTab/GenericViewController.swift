//
//  GenericViewController.swift
//  LetsTab
//
//  Created by user135477 on 4/10/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var barItem: UITabBarItem!
    
    @IBAction func incrementCountFirst(_ sender: Any) {
        
        (parent as! CountingTabBarController).firstCount = (parent as! CountingTabBarController).firstCount + 1
        updateBadge()
        updateCounts()
        
    }
    
    @IBAction func incrementCountSecond(_ sender: Any) {
        
        (parent as! CountingTabBarController).secondCount = (parent as! CountingTabBarController).secondCount + 1
        updateBadge()
        updateCounts()
    }

    @IBAction func incrementCountThird(_ sender: Any) {
        
        (parent as! CountingTabBarController).thirdCount = (parent as! CountingTabBarController).thirdCount + 1
        updateBadge()
        updateCounts()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateCounts(){
        let first = (parent as! CountingTabBarController).firstCount
        
        
        let second = (parent as! CountingTabBarController).secondCount
        
        
        let third = (parent as! CountingTabBarController).thirdCount
        
        self.outputLabel.text = "First: \(first) \nSecond: \(second) \nThird: \(third)"
        
    }
    
    func updateBadge(){
        
        var badgeCount: Int
        if(barItem.badgeValue != nil){
            badgeCount = Int(barItem.badgeValue!)!
            badgeCount = badgeCount + 1
            barItem.badgeValue = String(badgeCount)
            
            
        }else{
            barItem.badgeValue = "1"
            
            
            
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
