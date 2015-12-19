//
//  MainViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var ref = Firebase(url: "https://twittermach.firebaseio.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func logout(sender: AnyObject) {
//from DOCS on FireBase
        ref.unauth()
        self.performSegueWithIdentifier("logoutSegue", sender: self)
    
    }

}
