//
//  AuthProvider.swift
//  Walker
//
//  Created by iMac on 27/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation
import SwiftyJSON

class AuthProvider {
    
    private static let _instance = AuthProvider();
    static var Instance: AuthProvider {
        return _instance;
    }
    
    func POST(postString: String, Route: String) -> (URLRequest){
        let url = URL(string: Route)
        var request = URLRequest(url: url!)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        let postString = postString
        request.httpBody = postString.data(using: .utf8)
        
        return (request)
    }
    
    func callApi(_ postString: String, Route: String, completion:@escaping(_ res:JSON) -> Void ) {
        let req = POST(postString: postString, Route: Route)
        URLSession.shared.dataTask(with: req) { (data, response, error) in
            if let data = data{
                completion(JSON(data))
            }
            else {
                completion(JSON.null)
            }
            }.resume()
    }
    
    func GET(Route: String) -> (URLRequest){
        let url = URL(string: Route)
        var request = URLRequest(url: url!)
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        return (request)
    }
    
    func getApi(_ Route: String, completion:@escaping(_ res:JSON) -> Void ){
        let req = GET(Route: Route)
        URLSession.shared.dataTask(with: req) { (data, response, error) in
            if let data = data{
                completion(JSON(data))
            }
            else {
                completion(JSON.null)
            }
            }.resume()
    }
    
    
}
