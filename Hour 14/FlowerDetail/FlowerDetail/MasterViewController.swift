//
//  MasterViewController.swift
//  FlowerDetail
//
//  Created by user135477 on 4/17/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var flowerData:[AnyObject] = []
    var flowerSections:[String] = []
    
    var detailViewController: DetailViewController? = nil
    var objects = [AnyObject]()

    func createFlowerData(){
        
        var redFlowers:[Dictionary<String,String>] = []
        var blueFlowers:[Dictionary<String,String>] = []
        
        flowerSections = ["Red Flowers", "Blue Flowers"]
        
        redFlowers.append(["name":"Poppy", "picture":"Poppy.png", "url":"https://en.wikipedia.org/wiki/Poppy"])
        redFlowers.append(["name":"Straw Flower", "picture":"Strawflower.png", "url":"https://en.wikipedia.org/wiki/Peony"])
        
        blueFlowers.append(["name":"Hyacinth", "picture":"Hyacinth.png", "url":"https://en.wikipedia.org/wiki/Hyacinth_(flower)"])
        blueFlowers.append(["name":"Iris", "picture":"Iris.png", "url":"https://en.wikipedia.org/wiki/Iris_(plant)"])
        
        flowerData = [redFlowers as AnyObject, blueFlowers as AnyObject]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationItem.leftBarButtonItem = editButtonItem
        
        createFlowerData()

        //let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(insertNewObject(_:)))
        //navigationItem.rightBarButtonItem = addButton
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func insertNewObject(_ sender: Any) {
        objects.insert(Date() as AnyObject, at: 0)
        let indexPath = IndexPath(row: 0, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                //let object = objects[indexPath.row] as! NSDate
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                //controller.detailItem = object
                controller.detailItem = (self.flowerData[indexPath.section] as! [AnyObject])[indexPath.row]
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return flowerSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowerData[section].count
    }

func tableView(tableView: UITableView, titleForHeaderInSection section:  Int) -> String? {
        
    return flowerSections[section]
        
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "flowerCell", for: indexPath)

        //let object = objects[indexPath.row] as! NSDate
        //cell.textLabel!.text = object.description
        cell.textLabel!.text = ((flowerData[indexPath.section] as! [AnyObject])[indexPath.row] as! [String:String])["name"]as String!
        cell.detailTextLabel!.text = ((flowerData[indexPath.section] as! [AnyObject])[indexPath.row] as! [String:String])["url"]as String!
        cell.imageView!.image = UIImage(named:((flowerData[indexPath.section] as! [AnyObject])[indexPath.row] as! [String:String])["picture"]as String!)!
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return false
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }


}

