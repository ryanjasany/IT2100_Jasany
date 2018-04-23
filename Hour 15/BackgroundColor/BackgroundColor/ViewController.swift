//
//  ViewController.swift
//  BackgroundColor
//
//  Created by user135477 on 4/23/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let kOnOffToggle="onOff"
    
    let kHueSetting="hue"
    
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    @IBOutlet weak var hueSlider: UISlider!
    
    @IBAction func setBackgroundHueValue(_ sender: Any?) {
        
        let userDefaults:UserDefaults = UserDefaults.standard
        
        userDefaults.set(toggleSwitch.isOn, forKey:kOnOffToggle)
        
        userDefaults.set(hueSlider.value, forKey:kHueSetting)
        
        userDefaults.synchronize()
        
        if toggleSwitch.isOn{
            view.backgroundColor=UIColor(hue:CGFloat(hueSlider.value), saturation: 0.75, brightness:0.75, alpha:1.0)
            
        }else{
            view.backgroundColor = UIColor.white
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults:UserDefaults = UserDefaults.standard
        
        hueSlider.value = userDefaults.float(forKey: kHueSetting)
        
        toggleSwitch.isOn = userDefaults.bool(forKey: kOnOffToggle )
        
        setBackgroundHueValue(nil)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

