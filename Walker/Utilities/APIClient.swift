//
//  APIClient.swift
//  Walker
//
//  Created by iMac on 29/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation
import Alamofire
import UIKit

class APIClient: NSObject {
    
    static let objGlobalMthod = APIClient()
    
    func ServiceMethod(url:String, method:String, controller:UIViewController, parameters:Parameters, completion: @escaping (_ result: DataResponse<Any>) -> Void){
        var headers = Alamofire.SessionManager.defaultHTTPHeaders
        headers["HeaderKey"] = "HeaderKey"
        var methodType: HTTPMethod = .post
        var param: Parameters? = nil
        if method == "POST" {
            methodType = .post
            param = parameters
        } else {
            methodType = .get
        }
        
        Alamofire.request(url, method: methodType, parameters: param, encoding: JSONEncoding.default, headers: headers).responseJSON {
            response in
            print("Response API Client ---> ", response)
            completion(response)
        }
        
    }
    
}
