//
//  ViewController.swift
//  ixChat
//
//  Created by David Brown on 7/18/17.
//  Copyright © 2017 David Brown. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Login(_ sender: Any) {
        
        Firebase
        .Auth
        .auth()
            .signInAnonymously(completion: { (user,error) in
                if let err = error {
                    print(err.localizedDescription)
                    return
                }
                
                self.performSegue(withIdentifier: "navToChannels", sender: nil)
                
                /*
                let channelsNavigationController = self.storyboard?.instantiateViewController(
                */
                })
    }

}

