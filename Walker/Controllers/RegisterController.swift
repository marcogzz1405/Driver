//
//  RegisterController.swift
//  Walker
//
//  Created by iMac on 14/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import UIKit
import WebKit

class RegisterController : UIViewController {
    
    
    @IBOutlet weak var registerWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebContent()
    }
    
    // Metodo para esconder el navigationController (false)
    override func viewWillLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    func loadWebContent() {
        let url : URL = URL(string: "http://yevazadmin.com/registro.php")!
        let urlRequest : URLRequest = URLRequest(url: url)
        print("URL Request ---> ",  url)
        registerWebView.load(urlRequest)
    }
    
}
