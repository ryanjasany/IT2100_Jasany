//
//  ViewController.swift
//  GettingAttention
//
//  Created by user135477 on 3/18/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {

    
    @IBOutlet weak var userOutput: UILabel!
    
    @IBAction func doAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Alert Me Button Selected",
                                                message:"I need your attention NOW!",
                                            preferredStyle:UIAlertControllerStyle.alert)
        let defaultAction = UIAlertAction(title:"Ok",
                                          style:UIAlertActionStyle.cancel,
                                          handler:nil
        )
        
        alertController.addAction(defaultAction)
        
        present(alertController, animated:true, completion:nil)
        
    }
    
    @IBAction func doMultiButtonAlert(_ sender: Any) {
        
        
        let alertController = UIAlertController(title:"Alert with Buttons Selected",
                                                message:"Options are good for people!",
                                                preferredStyle:UIAlertControllerStyle.alert)
        let nowAction = UIAlertAction(title:"Do something Now",
                                          style:UIAlertActionStyle.default,
                                          handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Now"}
        )
        
        let laterAction = UIAlertAction(title:"Do something Later",
                                      style:UIAlertActionStyle.default,
                                      handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Later"}
        )
        
        let cancelAction = UIAlertAction(title:"Never do it",
                                      style:UIAlertActionStyle.cancel,
                                      handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Never"}
        )
        
        alertController.addAction(nowAction)
        alertController.addAction(laterAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated:true, completion:nil)
        
    }
    
    @IBAction func doAlertInput(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Email Address",
                                                message:"Please enter your email address",
                                                preferredStyle:UIAlertControllerStyle.alert)
        alertController.addTextField(configurationHandler: {(textField:UITextField) in
            textField.placeholder="Email Address"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        let defaultAction = UIAlertAction(title:"Ok",
                                          style:UIAlertActionStyle.default,
                                          handler:{(alertAction:UIAlertAction) in
                                            let emailAddress:String = alertController.textFields![0].text!
                                            self.userOutput.text="Entered '\(emailAddress)'"
        })
        
        alertController.addAction(defaultAction)
        present(alertController,animated:true,completion:nil)
        
        
        
        
    }
    
    @IBAction func doActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Available Actions",
                                                message:"choose something from this list",
                                                preferredStyle:UIAlertControllerStyle.actionSheet)
        
        let negotiateAction = UIAlertAction(title:"Negotiate",
                                            style:UIAlertActionStyle.default,
                                            handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Negotiate"
                                                
        })
        
        let compromiseAction = UIAlertAction(title:"Compromise",
                                             style:UIAlertActionStyle.default,
                                             handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Compromise"})
        
        let destroyAction = UIAlertAction(title:"Destroy",
                                             style:UIAlertActionStyle.destructive,
                                             handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Destroy"})
        
        let cancelAction = UIAlertAction(title:"Cancel",
                                             style:UIAlertActionStyle.cancel,
                                             handler:{(alertAction:UIAlertAction)in self.userOutput.text="Pressed Cancel"})
        
        alertController.addAction(negotiateAction)
        alertController.addAction(compromiseAction)
        alertController.addAction(destroyAction)
        alertController.addAction(cancelAction)
        
        if(alertController.popoverPresentationController != nil)
        {
            alertController.popoverPresentationController!.sourceView = sender as!UIButton
                alertController.popoverPresentationController!.sourceRect = (sender as!UIButton).bounds
            
        }
        
        present(alertController, animated:true,completion:nil)
        
    }
    
    @IBAction func doSound(_ sender: Any) {
        
        var soundID:SystemSoundID = 0
        let soundFile:String = Bundle.main.path(forResource: "soundeffect",ofType:"wav")!
        let soundURL:NSURL = NSURL(fileURLWithPath:soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
        
    }
    
    @IBAction func doAlertSound(_ sender: Any) {
        
        var soundID:SystemSoundID = 0
        let soundFile:String = Bundle.main.path(forResource: "alertsound",ofType:"wav")!
        let soundURL:NSURL = NSURL(fileURLWithPath:soundFile)
        AudioServicesCreateSystemSoundID(soundURL, &soundID)
        AudioServicesPlayAlertSound(soundID)
    }
    
    @IBAction func doVibration(_ sender: Any) {
        
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        
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

