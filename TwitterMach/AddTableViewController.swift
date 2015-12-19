//
//  AddTableViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

class AddTableViewController: UITableViewController {
    
    var ref = Firebase(url:"https://twittermach.firebasio.com/")
    var childRef = Firebase(url:"https://twittermach.firebasio.com/Posts/")
//    var userPost = Firebase(url:

    @IBOutlet weak var postTextField: UITextField!
//    var keys: Array = Array(self.posts.keys)
//    cell.textLabel!.text = posts[keys[indexPath.row]] as String!
//    print(Array(self.posts.values)[0])
    
    @IBAction func done(sender: AnyObject) {
        print("line----breaker")
        print(postTextField.text)
        
        var msgInput = postTextField.text
        
        
//        ref.childByAppendingPath("Posts").childByAutoId().setValue(postTextField.text)
        childRef.childByAutoId().setValue(msgInput)
        
        print(ref.authData.uid)
        
        ref.childByAppendingPath("users/\(ref.authData.uid)/post)").childByAutoId().setValue(postTextField.text)
        
        self.performSegueWithIdentifier("finishAddingMessage", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        
    }
 }
