//
//  ViewController.swift
//  SprayPost
//
//  Created by Parsa Abadi on 2022-10-03.
//

// testing


import UIKit
import CLTypingLabel
class StartUpPage: UIViewController {
    @IBOutlet weak var titleLabelFirstPage: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabelFirstPage.text = "spraypost"
    }

    @IBAction func registerButton(_ sender: UIButton) {
        print("register button pressed")
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        print("login button pressed")
        
        
        
    }
    
}

