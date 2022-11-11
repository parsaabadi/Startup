//
//  UserMainPage.swift
//  SprayPost
//
//  Created by Parsa Abadi on 2022-10-10.
//

import UIKit
import Firebase
import CoreLocation
class UserMainPage: UIViewController {
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        //title = "spraypost"
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
       
        navigationItem.hidesBackButton = true
        
    }

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
      
    do {
      try Auth.auth().signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
        
    }
    
    
    
    
}
//MARK: - CLLocationManagerDelegate
extension UserMainPage: CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print(lat)
            print(lon)
        }
        print("Got Location Data")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
