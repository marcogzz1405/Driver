//
//  RecoverController.swift
//  Walker
//
//  Created by iMac on 14/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import UIKit
import Alamofire

class RecoverController : UIViewController {
    
    @IBOutlet weak var recoverButton: UIButton!
    @IBOutlet weak var captureEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        recoverButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func recoverAction(_ sender: Any) {
        let recoverEmail = captureEmail.text
        if(recoverEmail == ""){
            showAlert(title: "Ingrese su correo electrónico.")
        } else {
            recover()
        }
    }
    
    func showAlert(title: String){
        let alert = UIAlertController(title: title, message: "", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "OK", style: .cancel){
            (actionOk) in
        }
        alert.addAction(actionOk)
        present(alert, animated: true, completion: nil)
    }
    
    func recover(){
        print("Recover Method --->")
        
    }
    
}
