//
//  DriverModel.swift
//  Walker
//
//  Created by iMac on 29/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation
import UIKit

struct DriverModel: Codable {
    let is_approved: Bool
    let car_model: String
    let timezone: String
    let zipcode: Int
    let email: String
    let state: String
    let social_unique_id: String
    let id: Int
    let rate: Double
    let country: String
    let address: String
    let last_name: String
    let device_type: String
    let is_approved_txt: String
    let phone: String
    let is_available: Bool
    let version: String
    let first_name: String
    let picture: String
    let bio: String
    let device_token: String
    let token: String
    let login_by: String
    let car_number: String
    
    enum CodingKeys: String, CodingKey {
        case is_approved
        case car_model = "car_model"
        case timezone = "timezone"
        case zipcode
        case email = "email"
        case state = "state"
        case social_unique_id = "social_unique_id"
        case id
        case rate
        case country = "country"
        case address = "address"
        case last_name = "last_name"
        case device_type = "device_type"
        case is_approved_txt = "is_approved_txt"
        case phone = "phone"
        case is_available
        case version = "version"
        case first_name = "first_name"
        case picture = "picture"
        case bio = "bio"
        case device_token = "device_token"
        case token = "token"
        case login_by = "login_by"
        case car_number = "car_number"
    }
    
    init(is_approved: Bool, car_model: String, timezone: String, zipcode: Int, email: String, state: String, social_unique_id: String, id: Int, rate: Double, country: String, address: String, last_name: String, device_type: String, is_approved_txt: String, phone: String, is_available: Bool, version: String, first_name: String, picture: String, bio: String, device_token: String, token: String, login_by: String, car_number: String){
        self.is_approved = is_approved
        self.car_model = car_model
        self.timezone = timezone
        self.zipcode = zipcode
        self.email = email
        self.state = state
        self.social_unique_id = social_unique_id
        self.id = id
        self.rate = rate
        self.country = country
        self.address = address
        self.last_name = last_name
        self.device_type = device_type
        self.is_approved_txt = is_approved_txt
        self.phone = phone
        self.is_available = is_available
        self.version = version
        self.first_name = first_name
        self.picture = picture
        self.bio = bio
        self.device_token = device_token
        self.token = token
        self.login_by = login_by
        self.car_number = car_number
    }
    
}
