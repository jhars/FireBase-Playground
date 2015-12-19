//
//  AddTableViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {

    @IBAction func done(sender: AnyObject) {
        
        self.performSegueWithIdentifier("finishAddingMessage", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }
 }
