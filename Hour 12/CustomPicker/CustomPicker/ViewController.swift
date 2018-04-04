//
//  ViewController.swift
//  CustomPicker
//
//  Created by user135477 on 4/3/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    func displayAnimal(chosenAnimal: String, withSound chosenSound:String, fromComponent chosenComponent:String){

        outputLabel.text = "You changed \(chosenComponent)( \(chosenAnimal)and the sound \(chosenSound))"
        
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


