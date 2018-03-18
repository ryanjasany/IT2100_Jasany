//
//  ViewController.swift
//  FlowerWeb
//
//  Created by user135477 on 3/5/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var colorChoice: UISegmentedControl!
    
    @IBOutlet weak var flowerView: WKWebView!
    
    
    @IBAction func changeFlower(_ sender: Any) {

        
        var appleURLString = ""
        switch colorChoice.selectedSegmentIndex {
        case 0:
            appleURLString = "https://teachyourselfios.info/?hour=9&color=yellow&session=1"
        case 1:
            appleURLString = "https://teachyourselfios.info/?hour=9&color=red&session=1"
        case 2:
            appleURLString = "https://teachyourselfios.info/?hour=9&color=blue&session=1"
        case 3:
            appleURLString = "https://teachyourselfios.info/?hour=9&color=green&session=1"
        default:
            appleURLString = "https://teachyourselfios.info/?hour=9&color=yellow&session=1"
        }
        
        let myURL = URL(string: appleURLString)
        let myRequest = URLRequest(url: myURL!)
        flowerView.load(myRequest)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myURL = URL(string: "http://teachyourselfios.info/?hour=9&color=yellow&session=1")
        let myRequest = URLRequest(url: myURL!)
        flowerView.load(myRequest)
        
        /*flowerDetailView.isHidden=true
        getFlower(sender: nil)*/
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

