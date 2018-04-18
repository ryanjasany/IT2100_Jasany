//
//  DetailViewController.swift
//  FlowerDetail
//
//  Created by user135477 on 4/17/18.
//  Copyright © 2018 Ryan Jasany. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var detailWebView: UIWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            
            if let webview = detailWebView{
            
            let detailURL:URL = URL(string: detail["url"] as!String!)!
                webview.loadRequest(URLRequest(url:detailURL))
            navigationItem.title = detail["name"]as! String!
                detailDescriptionLabel.isHidden = true
            
            }
//            if let label = detailDescriptionLabel {
//                label.text = detail.description
//            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

