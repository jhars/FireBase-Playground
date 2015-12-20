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
//    var childRef = Firebase(url:"h ttps://twittermach.firebasio.com/Posts/")
//    var userPost = Firebase(url:


    @IBOutlet weak var composeTextField: UITextField!
//    var keys: Array = Array(self.posts.keys)
//    cell.textLabel!.text = posts[keys[indexPath.row]] as String!
//    print(Array(self.posts.values)[0])
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnDone(sender: AnyObject) {
        print("done BUtton")
        
        
//        let postRef = ref.childByAppendingPath("posts")
//        let post1 = ["author": "gracehop", "title": "Announcing COBOL, a New Programming Language"]
//        let post1Ref = postRef.childByAutoId()
//        post1Ref.setValue(post1)
        
//        var postRef = self.ref.childByAppendingPath("Posts")
//        var postMsg = composeTextField.text
//        var newMsgValue = postMsg as String!
//        
//        var newPostRef = postRef.childByAutoId()
//
//        print(newMsgValue)
//        print("newMsgValue01")
//        newPostRef.setValue(newMsgValue)
//        print(newMsgValue)
//        print("newMsgValue02")
        
        
        //        var newPost = [ "\(NSDate())" : newMsgValue ]
        

        
        
        

        
        
        
        
//        var postMsg = composeTextField.text
//        var newPost = postMsg as String!
//        print(postMsg)
//        print(newPost)
//        print("postMsg01")
//        var postRef = self.ref.childByAppendingPath("Posts")

        
        
//        var newPostRef = postRef.childByAutoId()
//        newPostRef.setValue(newPost)
        
        
//        self.ref.childByAppendingPath("Posts").childByAutoId().setValue(postMsg)
        print("postMsg02")
//        print (newPostRef)

        
        
        self.performSegueWithIdentifier("donePost", sender: self)
    }


        
//        print(postTextField.text)
//        var postMsg = postTextField.text
//
//        
//        var newPost = postMsg as String!
//        
//        var postRef = ref.childByAppendingPath("Posts")
//        
//        
//        var newPostRef = postRef.childByAutoId()
//        newPostRef.setValue(newPost)


    
    
//            self.performSegueWithIdentifier("finishAddingMessage", sender: self)
    
//    @IBAction func done(sender: AnyObject) {
//        print("line----breaker")
//        print(postTextField.text)
//        var msgInput = postTextField.text
//        ref.childByAppendingPath("Posts").childByAutoId().setValue(postTextField.text)
//        childRef.childByAutoId().setValue(msgInput)
//        print(ref.authData.uid)
//        ref.childByAppendingPath("users/\(ref.authData.uid)/post)").childByAutoId().setValue(postTextField.text)
//    }
    


 }
