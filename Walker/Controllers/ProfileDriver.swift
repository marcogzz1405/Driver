//
//  ProfileDriver.swift
//  Walker
//
//  Created by iMac on 04/12/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

class ProfileDriver: UIViewController {
    
    
    
    @IBOutlet weak var imageProfile: UIImageView!
    
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var placasLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageProfile.layer.cornerRadius = imageProfile.bounds.size.width / 2.0
        let picture = UserDefaults.standard.string(forKey: "loginSession")
        print("Picture Profiel", picture)
        goToProfile()
    }
    
    func goToProfile(){
        
    }
    
}
