//
//  Scene2ViewController.swift
//  Lab10-MultipleScenes
//
//  Created by user135477 on 3/28/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController {

    @IBOutlet weak var greetingOutput: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        greetingOutput.text = "hello, " + (presentingViewController as!ViewController).nameInput.text!
        
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//
//        greetingOutput.text = "hello, " + (presentingViewController as!ViewController).nameInput.text!
        
        
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
