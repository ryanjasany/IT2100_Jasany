//
//  ViewController.swift
//  FlowerColorTable
//
//  Created by user135477 on 4/16/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    

    

    let redFlowers: [String] = ["Gerbera","Peony","Rose","Poppy"]
    
    let blueFlowers: [String] = ["Hyacinth","Hydrangea","Sea Holly","Phlox","Iris"]
    
    let kSectionCount:Int = 2
    let kRedSection:Int = 0
    let kBlueSection:Int = 1
    
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
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int{
        
        switch section{
        case kRedSection:
            return redFlowers.count
        case kBlueSection:
            return blueFlowers.count
        default:
            return 0
            
            
        }
        
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section:  Int) -> String?{
        
        switch section{
        case kRedSection:
            return "Red"
        case kBlueSection:
            return "Blue"
        default:
            return "Unknown"
            
        }
    
    }

    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "flowerCell")! as UITableViewCell
        
        switch(indexPath.section){
        case kRedSection:
            cell.textLabel!.text = redFlowers[indexPath.row]
        case kRedSection:
            cell.textLabel!.text = blueFlowers[indexPath.row]
        default:
            cell.textLabel!.text = "Unknown"
            
        }
        
        let flowerImage: UIImage = UIImage(named: cell.textLabel!.text!)!
        
        cell.imageView!.image = flowerImage
        
        return cell
        
    }
    

}

