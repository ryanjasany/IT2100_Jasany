//
//  ViewController.swift
//  Lab02Rjasany
//
//  Created by user135477 on 1/27/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myMessage: UILabel
        myMessage=UILabel(frame:CGRect(x: 30.0,y: 50.0,width: 300.0,height: 50.0))
        myMessage.font=UIFont.systemFont(ofSize: 48.0)
        myMessage.text="HelloXcode"
        myMessage.textColor=UIColor(patternImage: UIImage(named:"Background")!)
        view.addSubview(myMessage)
        NSLog("Hello Xcode, Again")
        
    }

    //MARK: -Method for handling memory management
    //TODO: -Final Commit Lab 02
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

