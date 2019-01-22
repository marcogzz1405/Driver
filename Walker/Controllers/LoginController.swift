//
//  LoginController.swift
//  Walker
//
//  Created by iMac on 31/10/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

internal class LoginController : UIViewController {
    
    @IBOutlet var buttonRecover: UIView!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var captureEmail: UITextField!
    @IBOutlet weak var capturePassword: UITextField!
    public let LOGIN_SEGUE = "Login"
    var isLogin: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLogin.layer.cornerRadius = 15
        captureEmail.layer.cornerRadius = 15
        capturePassword.layer.cornerRadius = 15
    }
    
    // Metodo para esconder el navigationController (true)
    override func viewWillLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func actionLogin(_ sender: UIButton) {
        login(withEmail: captureEmail.text!, password: capturePassword.text!)
    }

    
    func login(withEmail: String, password: String){
        if withEmail != "" && password != "" {
            if CheckInternet.Connection(){
                let params: [String: String] = ["email": withEmail, "password": password, "device_type": "ios", "device_token": "prueba", "login_by": "manual"]
                APIClient.objGlobalMthod.ServiceMethod(url: K.login, method: "POST", controller: self, parameters: params){
                    response in
                    switch response.result {
                    case .success(_):
                        let success = response.result.value
                        let json = JSON(success)
                        print("Success: ", json)
                        let result = json["success"]
                        if result == true {
                            let driver = result["driver"]
                            if let sessionString = driver.rawString(){
                                UserDefaults.standard.set(sessionString, forKey: "loginSession")
                                self.performSegue(withIdentifier: self.LOGIN_SEGUE, sender: nil)
                            }
                            //print("True --->")
                            /*do {
                                let jsonData = response.data
                                let loginModel = try JSONDecoder().decode(LoginModel.self, from: jsonData!)
                                print("Data Response ---> ", loginModel)
                                self.performSegue(withIdentifier: self.LOGIN_SEGUE, sender: nil)
                            } catch let error {
                                print("Error: ", error)
                            }*/
                        } else {
                            let error_code = json["error_code"]
                            if error_code == 606 {
                                self.showAlert(title: "Usuario o contraseña invalido.")
                            }
                        }
                        
                        break
                    case .failure(_):
                        break
                    }
                }
            }
        } else {
            if withEmail == "" {
                showAlert(title: "Ingrese su correo.")
            } else if password == "" {
                showAlert(title: "Ingrese su contraseña.")
            }
        }
    }
    
    static func saveAllObjects(allObjects: [DriverModel]) {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(allObjects){
            UserDefaults.standard.set(encoded, forKey: "driverModel")
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
    
}
