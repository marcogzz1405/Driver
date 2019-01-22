//
//  TabBarController.swift
//  Walker
//
//  Created by iMac on 20/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let objSesion = 
        addNavBarImage()
        
    }
    
    override func viewWillLayoutSubviews() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func addNavBarImage(){
        //Poner imagen del status bar
        let imageView = UIImageView(frame: CGRect(x : 0, y : 0, width : 38, height : 38))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "logoStatusBar")
        imageView.image = image
        navigationItem.titleView = imageView
        
        //Eliminar boton de back
        self.navigationItem.hidesBackButton = true
    }
    
}
