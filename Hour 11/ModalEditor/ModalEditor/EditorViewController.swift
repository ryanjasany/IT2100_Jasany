//
//  EditorViewController.swift
//  ModalEditor
//
//  Created by user135477 on 3/27/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {

    
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func updateEditor(_ sender: Any) {
        
        (presentingViewController as!ViewController).emailLabel.text =
        emailField.text
        
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        emailField.resignFirstResponder()  
        
    }
    
    override func viewWillAppear(_ animated:Bool){
        
        emailField.text = (presentingViewController as!ViewController).emailLabel.text
        super.viewWillAppear(animated)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //preferredContentSize = CGSizeMake(340,160)
        let popoverController:UIPopoverPresentationController = self.popoverPresentationController!
        popoverController.sourceRect = popoverController.sourceView!.bounds
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
