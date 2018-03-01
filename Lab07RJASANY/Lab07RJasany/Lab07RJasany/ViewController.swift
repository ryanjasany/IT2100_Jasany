//
//  ViewController.swift
//  Lab07RJasany
//
//  Created by user135477 on 2/28/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBOutlet weak var stepperValue: UIStepper!
    
    @IBOutlet weak var sliderOutput: UILabel!
    
    @IBOutlet weak var stepperOutput: UILabel!
    
    @IBAction func changeSlider(_ sender: Any) {
        
        sliderOutput.text="Slider: "+String(format: "%.0f",sliderValue.value)
        
    }
    
    @IBAction func changeStepper(_ sender: Any) {
        
        stepperOutput.text="Stepper: "+String(format: "%.0f", stepperValue.value)
        
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

