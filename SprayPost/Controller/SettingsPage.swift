//
//  SettingsPage.swift
//  SprayPost
//
//  Created by Parsa Abadi on 2022-10-19.
//

import UIKit
import Firebase
class SettingsPage: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var updatePasswordEmailTextField: UITextField!
    @IBOutlet weak var updateNewPasswordTextField: UITextField!
    @IBOutlet weak var updateOldPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        title = "Settings"
        super.viewDidLoad()
        navigationItem.hidesBackButton = false
        navigationItem.backButtonTitle = "hello"
        
        
        
    }
    
    
    @IBAction func deleteAccountPressed(_ sender: UIButton) {
        let user = Auth.auth().currentUser
        if let email = emailTextField.text,let password = passwordTextField.text {
            let credential: AuthCredential = EmailAuthProvider.credential(withEmail: email, password: password)
            
            user?.reauthenticate(with: credential) {authResult, error in
              if let e = error {
                print(e)
              } else {
                print("authentication successful")
                  print("account deleted successfully")
                  user?.delete()
                  self.navigationController?.popToRootViewController(animated: true)
                  
              }
            }
           
        }
    }
    
    @IBAction func changePasswordPressed(_ sender: UIButton) {
        let user = Auth.auth().currentUser
        if let email = updatePasswordEmailTextField.text, let oldPassword = updateOldPasswordTextField.text, let newPassword = updateNewPasswordTextField.text{
            let credential: AuthCredential = EmailAuthProvider.credential(withEmail: email, password: oldPassword)
            
            user?.reauthenticate(with: credential) {authResult, error in
              if let e = error {
                print(e)
              } else {
                print("authentication successful")
                  print("account password changed successfully")
                  Auth.auth().currentUser?.updatePassword(to: newPassword) { error in
                      if let e = error{
                          print(e)
                      }else{
                          self.navigationController?.popToRootViewController(animated: true)
                      }
                      
                  }
                  
                  
              }
            }
           
        }
        
    }
}



