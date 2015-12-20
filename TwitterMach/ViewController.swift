//
//  ViewController.swift
//  TwitterMach
//
//  Created by Jon Harlan on 12/18/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var ref=Firebase(url: "https://twittermach.firebaseio.com/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        if ref.authData != nil {
            print("there is a user already signed in")
            self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
        } else {
            print("you will have to sign in first")
        }
    }
    
    @IBAction func login(sender: AnyObject) {
        if emailTextField.text == "" || passwordTextField.text == "" {
            print("make sure to fill in all text fields")
        } else {
            ref.authUser(emailTextField.text, password: passwordTextField.text, withCompletionBlock: { (error, authData) -> Void in
                if error != nil {
                    print(error)
                    print("ther is an error with the givin input-JH")
                } else {
                    print("login succesful :)")
                    self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
                }
            })
        }
    }
    
    
    @IBAction func signUp(sender: AnyObject) {
        
        if emailTextField.text == "" || passwordTextField.text == "" {
            print("make sure to enter in each textfield")
        } else {
            ref.createUser(emailTextField.text, password: passwordTextField.text, withValueCompletionBlock: { (error, result) -> Void in
                
                if error != nil {
                    var myError = error
                    print(myError)
                } else {
                    
//                    var userID = result.uid
                    print("success sign up!")
                    
                    self.ref.authUser(self.emailTextField.text, password: self.passwordTextField.text, withCompletionBlock: { (ErrorType, authData) -> Void in
                        if error != nil {
                            print(error)
                            print("there is an error with your data")
                        } else {
                            var userId = authData.uid
                            
                            let newUser = [
                                            "provider": authData.provider,
                                            "email": authData.providerData["email"] as? NSString as? String
                            ]
                            
// ===== BREAKING POINT =========== //
                            
                            let fakePost = [
                            
                                "\(NSDate())" : "this is my 1st fake post"
                            
                            ]
                            
                            self.ref.childByAppendingPath("users").childByAppendingPath(authData.uid).setValue(newUser)
                            self.ref.childByAppendingPath("users/\(authData.uid)/post").setValue(fakePost)
                            
                            self.performSegueWithIdentifier("loginAndSignUpComplete", sender: self)
                            
                            
                            
                        }
                    })
                }
                })
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

