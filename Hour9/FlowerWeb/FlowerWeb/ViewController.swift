//
//  ViewController.swift
//  FlowerWeb
//
//  Created by user135477 on 3/5/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorChoice: UISegmentedControl!
    
    @IBOutlet weak var flowerView: UIWebView!
    
    @IBOutlet weak var flowerDetailView: UIWebView!
    
    @IBAction func getFlowerDetail(_ sender: Any) {
        
        flowerDetailView.hidden = !(sender as! UISwitch).on
        
    }
    
    @IBAction func getFlower(_ sender: Any) {
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

