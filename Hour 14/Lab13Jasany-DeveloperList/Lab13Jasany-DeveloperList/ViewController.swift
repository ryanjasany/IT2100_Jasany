//
//  ViewController.swift
//  Lab13Jasany-DeveloperList
//
//  Created by user135477 on 4/22/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let webDevelopers: [String] = ["Al Dente", "Armand Hammer", "Barry Cade", "Cara Van"]
    let mobileDevelopers: [String] = ["Ginger Ayle", "June Bugg", "Iona Ford", "Sue Flay", "Tim Burr", "Will Wynn"]
    
    let kSectionCount:Int = 2
    let kWebSection:Int = 0
    let kMobileSection:Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return kSectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section{
        case kWebSection:
            return webDevelopers.count
        case kMobileSection:
            return mobileDevelopers.count
        default:
            return 0
            
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        switch section{
        case kWebSection:
            return "Web Developers"
        case kMobileSection:
            return "Mobile Developers"
        default:
            return "Unknown"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "developerCell")! as UITableViewCell
        
        switch(indexPath.section){
        case kWebSection:
            cell.textLabel!.text = webDevelopers[indexPath.row]
        case kMobileSection:
            cell.textLabel!.text = mobileDevelopers[indexPath.row]
        default:
            cell.textLabel!.text = "Unknown"
        }
        
        let developerImage: UIImage = UIImage(named: cell.textLabel!.text!)!
        cell.imageView!.image = developerImage
        
        return cell
        
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        var developerMessage: String
        switch indexPath.section{
        case kWebSection:
            developerMessage = "You chose the Web developer \(webDevelopers[indexPath.row])"
        case kMobileSection:
            developerMessage = "You chose the Mobile developer \(mobileDevelopers[indexPath.row])"
        default:
            developerMessage = "I have no idea what you chose?!"
            
        }
        
        let alertController = UIAlertController(title: "Developer Selected", message: developerMessage, preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
    
    
}

