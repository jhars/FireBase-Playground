//
//  MainViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {

//    let posts: [String] = ["hello", "hello", "three"]
    //Empty Dictinary
    var posts: [String: String] = [String: String]()
    var ref = Firebase(url: "https://twittermach.firebaseio.com/")
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count

    }
// Save for Later....
//    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
//
//    }
//    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
//        <#code#>
//    }
//    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
//        cell.textLabel!.text = self.posts[indexPath.row]
        var keys: Array = Array(self.posts.keys)
        
        cell.textLabel!.text = posts[keys[indexPath.row]] as String!
        //myArray[0]
        //myDictionary["firstObject"]
        
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref.observeEventType(.Value, withBlock: { snapshot in
            
            // * SAVE THIS * //
            print(snapshot.value.objectForKey("Posts"))
            print("did the view load?")
            
            var selfPosts = snapshot.value.objectForKey("Posts") as! [String: String]


            self.posts = selfPosts
            
//            print(self.posts)
            
//            print(Array(self.posts.values))
            
            
            
            self.tableView.reloadData()
        })
    }
    
    // LOGOUT
    @IBAction func logout(sender: AnyObject) {
//from DOCS on FireBase
        ref.unauth()
        self.performSegueWithIdentifier("logoutSegue", sender: self)
    
    }

}
