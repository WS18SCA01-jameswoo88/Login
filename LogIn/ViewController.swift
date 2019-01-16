//
//  ViewController.swift
//  LogIn
//
//  Created by James Chun on 1/14/19.
//  Copyright © 2019 James Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }

    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUserNameButton)
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPasswordButton)
    }
    
}

