//
//  SecondViewController.swift
//  SprayPost
//
//  Created by Parsa Abadi on 2022-10-05.
//

import UIKit
import Firebase
class RegisterPage: UIViewController {
    
    
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
                if let e = error {
                    print(e) //app for deployment, relay error to user in pop up fashion
                } else{
                    //navigate to mainpage
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
    }
}



