//
//  ViewController.swift
//  Foober
//
//  Created by David Mattia on 10/12/14.
//  Copyright (c) 2014 David Mattia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PFLogInViewControllerDelegate {

    @IBOutlet weak var HelloLabel: UILabel!
    var name: String?
    var userID: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func logoutClick(sender: AnyObject) {
        PFUser.logOut()
        viewDidAppear(true)
    }
    
    override func viewDidAppear(animated: Bool) {
        var user = PFUser.currentUser()
        if user == nil {
            var login: PFLogInViewController = PFLogInViewController()
            login.delegate = self
            login.fields = PFLogInFields.Facebook
            self.presentViewController(login, animated: true, completion: nil)
        } else {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        FBRequestConnection.startForMeWithCompletionHandler { (connection: FBRequestConnection!, result: AnyObject?, error: NSError?) -> Void in
            if result != nil {
                println(result!)
                self.HelloLabel.text = "Hello " + result!.name + "!"
                self.name = result!.name
                self.userID = result!.link
                println(self.userID!)
            }
        }
    }
    
    func logInViewController(logInController: PFLogInViewController!, didLogInUser user: PFUser!) -> Void{
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

