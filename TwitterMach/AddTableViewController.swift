//
//  AddTableViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

//class AddTableViewController: MainViewController {
    class AddTableViewController: UITableViewController {
//    var ref = Firebase(url:"h ttps://twittermach.firebasio.com/")
    @IBOutlet weak var composeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnDone(sender: AnyObject) {
        print("done BUtton")
        //        var newPost = [ "\(NSDate())" : newMsgValue ]
        //create Object Here...?
        print("postMsg02")
        self.performSegueWithIdentifier("donePost", sender: self)
    }

 }
