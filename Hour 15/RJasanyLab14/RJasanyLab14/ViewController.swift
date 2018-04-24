//
//  ViewController.swift
//  RJasanyLab14
//
//  Created by user135477 on 4/24/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var Occupation: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var contactsView: UITextView!
    
    
    @IBAction func storeContact(_ sender: Any) {
        
        let csvLine:String = "\(firstName.text!),\(lastName.text!),\(Occupation.text!),\(phone.text!)\n"
        
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0]
        
        let contactFile:String=(docDir as NSString).appendingPathComponent("contactslist.csv")
        
        if !FileManager.default.fileExists(atPath: contactFile){
            FileManager.default.createFile(atPath: contactFile, contents:nil, attributes:nil)
            
        }
        
        let fileHandle:FileHandle = FileHandle(forUpdatingAtPath:contactFile)!
        fileHandle.seekToEndOfFile()
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        
        fileHandle.closeFile()
        
        firstName.text = ""
        lastName.text = ""
        Occupation.text = ""
        phone.text = ""
        
        
    }
    
    
    @IBAction func showContact(_ sender: Any) {
        
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0] as String
        
        let contactFile:String=(docDir as NSString).appendingPathComponent("contactslist.csv")
        
        if FileManager.default.fileExists(atPath: contactFile){
            let fileHandle:FileHandle = FileHandle(forReadingAtPath: contactFile)!
            
            let contactList:String = NSString(data: fileHandle.availableData, encoding:String.Encoding.utf8.rawValue)! as String
            
            fileHandle.closeFile()
            
            contactsView.text = contactList
        }
        
    }
    
    @IBAction func hideKeyboard(_ sender: Any) {
        
        firstName.resignFirstResponder()
        lastName.resignFirstResponder()
        Occupation.resignFirstResponder()
        phone.resignFirstResponder()
        
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

