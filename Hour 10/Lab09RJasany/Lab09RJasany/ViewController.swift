//
//  ViewController.swift
//  Lab09RJasany
//
//  Created by user135477 on 3/19/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    
    
    @IBOutlet weak var favoriteLanguage: UILabel!
    
    @IBOutlet weak var selectedAction: UITextView!
    
    @IBAction func showAlertWithFields(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Email Address",
                                                message:"Please enter your email address",
                                                preferredStyle:UIAlertControllerStyle.alert)
        alertController.addTextField(configurationHandler: {(textField:UITextField) in
            textField.placeholder="Name"
            textField.keyboardType=UIKeyboardType.alphabet
        })
        
        alertController.addTextField(configurationHandler: {(textField:UITextField) in
            textField.placeholder="Email Address"
            textField.keyboardType=UIKeyboardType.emailAddress
        })
        
        let defaultAction = UIAlertAction(title:"Ok",
                                          style:UIAlertActionStyle.default,
                                          handler:{(alertAction:UIAlertAction) in
                                            let name:String = alertController.textFields![0].text!
                                            self.userName.text="\(name)"
                                            let emailAddress:String = alertController.textFields![1].text!
                                            self.userEmail.text="\(emailAddress)"
        })
        
        alertController.addAction(defaultAction)
        present(alertController,animated:true,completion:nil)
        
    }
    
    
    @IBAction func showAlertWithOptions(_ sender: Any) {
        
        let alertController = UIAlertController(title:"Select Favorite language",
                                                message:"Choose one of the options below",
                                                preferredStyle:UIAlertControllerStyle.alert)
        let languageActionCsharp = UIAlertAction(title:"C#",
                                      style:UIAlertActionStyle.default,
                                      handler:{(alertAction:UIAlertAction)in self.favoriteLanguage.text="C#"}
        )
        
        let languageActionJava = UIAlertAction(title:"Java",
                                        style:UIAlertActionStyle.default,
                                        handler:{(alertAction:UIAlertAction)in self.favoriteLanguage.text="Java"}
        )
        
        let languageActionSwift = UIAlertAction(title:"Swift",
                                         style:UIAlertActionStyle.cancel,
                                         handler:{(alertAction:UIAlertAction)in self.favoriteLanguage.text="Swift"}
        )
        
        alertController.addAction(languageActionCsharp)
        alertController.addAction(languageActionJava)
        alertController.addAction(languageActionSwift)
        
        present(alertController, animated:true, completion:nil)
        
        
    }
    
    
    @IBAction func showActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Choose an Action",
                                                message:"choose something from this list",
                                                preferredStyle:UIAlertControllerStyle.actionSheet)
        
        let sendAction = UIAlertAction(title:"Send Information",
                                       style:UIAlertActionStyle.default,
                                       handler:{(alertAction:UIAlertAction)in self.selectedAction.text="Thank you! We will Send information about " + self.favoriteLanguage.text!
                                        
        })
        
        let doNotSendAction = UIAlertAction(title:"Do not Send Information",
                                            style:UIAlertActionStyle.default,
                                            handler:{(alertAction:UIAlertAction)in self.selectedAction.text="Thank you!"})
        
        let cancelAction = UIAlertAction(title:"Cancel",
                                         style:UIAlertActionStyle.cancel,
                                         handler:{(alertAction:UIAlertAction)in self.selectedAction.text="Pressed Cancel"})
        
        alertController.addAction(sendAction)
        alertController.addAction(doNotSendAction)
        alertController.addAction(cancelAction)
        
        if(alertController.popoverPresentationController != nil)
        {
            alertController.popoverPresentationController!.sourceView = sender as!UIButton
            alertController.popoverPresentationController!.sourceRect = (sender as!UIButton).bounds
            
        }
        
        present(alertController, animated:true,completion:nil)
        
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

