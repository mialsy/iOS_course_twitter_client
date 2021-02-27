//
//  LoginViewController.swift
//  Twitter
//
//  Created by Mialsy on 2/25/21.
//  Copyright © 2021 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLoginButton(_ sender: Any) {
        let twiRequestToken = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(
            url: twiRequestToken,
            success: {  
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            },
            failure: { (Error) in
                print("cannot log in")
            })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
