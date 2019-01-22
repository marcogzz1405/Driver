//
//  LoginModel.swift
//  Walker
//
//  Created by iMac on 29/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation
//import UIKit

struct LoginModel: Codable {
    //let success: Bool
    let version: String
    let is_active: Int
    let driver: DriverModel
    
    init(version: String, is_active: Int, driver: DriverModel){
        self.version = version
        self.is_active = is_active
        self.driver = driver
    }
    
}
