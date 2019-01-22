//
//  Constants.swift
//  Walker
//
//  Created by iMac on 15/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import Foundation

struct K {
    // Servidor de prueba
    public static let host_url = "http://181.215.102.208/movilAndroid/yevaz/public/"
    
    // Servidor de Produccion
    //private static let host_url = "http://www.yevazmovil.com"
    public static let base_url = host_url +  "provider/"
    static let login = base_url + "login"
    static let recover = base_url + "application/forgot-password"
    static let changeState = base_url + "togglestate"
    
}
