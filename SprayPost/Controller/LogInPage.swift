//
//  LogInPage.swift
//  SprayPost
//
//  Created by Parsa Abadi on 2022-10-06.
//

import UIKit
import Firebase
class LogInPage: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e) // present error to users
                } else {
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
         
        }
        
        
    }
    
    @IBAction func forgotPasswordPressed(_ sender: UIButton) {
        print("forgot button pressed")
        if let email = emailTextField.text{
            Auth.auth().sendPasswordReset(withEmail: email) { error in
                if let e = error{
                    print(e)
                }
          
            }
        }
    }
    
}

