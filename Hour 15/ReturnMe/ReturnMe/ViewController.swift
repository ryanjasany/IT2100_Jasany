//
//  ViewController.swift
//  ReturnMe
//
//  Created by user135477 on 4/23/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let kName:String = "name"
    let kEmail:String = "email"
    let kPhone:String = "phone"
    let kPicture:String = "picture"
    
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setValuesFromPreferences()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setValuesFromPreferences(){
        
        let userDefaults:UserDefaults=UserDefaults.standard
        
        let initialDefaults:[String:String]=[kPicture:"Dog",
                                             kName:"Your Name",
                                             kEmail:"you@you.com",
                                             kPhone:"(555)555-1212"                                           ]
        userDefaults.register(defaults: initialDefaults)
        
        let picturePreference:String = userDefaults.string(forKey: kPicture)!
        
        if picturePreference == "Dog"{
            image.image = UIImage(named: "dog1.png")
        }else if picturePreference == "Crazy Dog"
        {
                image.image = UIImage(named:"dog2.png")
                
        }else{
                image.image = UIImage(named:"coral.png")
        }
        
        name.text = userDefaults.string(forKey: kName)
        email.text = userDefaults.string(forKey: kEmail)
        phone.text = userDefaults.string(forKey: kPhone)
            
        
        
        
        
    }

}

