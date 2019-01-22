//
//  MapsDriver.swift
//  Walker
//
//  Created by iMac on 22/11/18.
//  Copyright © 2018 Yevaz. All rights reserved.
//

import UIKit
import CoreLocation
import GoogleMaps

class MapsDriver: UIViewController, CLLocationManagerDelegate {
    
    var mapView: GMSMapView?
    var camera : GMSCameraPosition?
    // Boton de desactivar
    let disactivatedButton = UIButton()
    @IBOutlet weak var activatedButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        activatedButton.layer.cornerRadius = 15
        initDisactivatedButton()
        disactivatedButton.isHidden = true
        viewMap()
    }
    
    func initDisactivatedButton() {
        disactivatedButton.setTitle("DESACTIVAR", for: .normal)
        disactivatedButton.titleLabel?.textColor = UIColor.white
        disactivatedButton.backgroundColor = UIColor.black
        disactivatedButton.layer.cornerRadius = 15
        disactivatedButton.addTarget(self, action: #selector(disactivateMap(_:)), for: .touchUpInside)
        self.view.addSubview(disactivatedButton)
        disactivatedButton.translatesAutoresizingMaskIntoConstraints = false
        disactivatedButton.widthAnchor.constraint(equalToConstant: 360).isActive = true
        disactivatedButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        disactivatedButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58).isActive = true
        disactivatedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func viewMap() {
        //map
        self.camera = GMSCameraPosition.camera(withLatitude: 19.5197966, longitude: -99.2327934, zoom: 18.0)
        self.mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 64, width: self.view.frame.width, height: self.view.frame.height), camera: camera!)
        self.view.addSubview(self.mapView!)
        self.view.sendSubviewToBack(self.mapView!)
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 19.5197966, longitude: -99.2327934)
        marker.title = "YEVAZ"
        marker.snippet = "Mexico"
        marker.map = self.mapView
    }
    
    
    @objc func disactivateMap(_ : UIButton){
        if(imageView.isHidden == true){
            imageView.isHidden = false
            disactivatedButton.isHidden = true
        }
        else{
            imageView.isHidden = false
            disactivatedButton.isHidden = true
            
        }
    }
    
    @IBAction func changeState(_ sender: Any) {
        if(imageView.isHidden == false){
            imageView.isHidden = true
            disactivatedButton.isHidden = false
        }
        else{
            imageView.isHidden = true
            disactivatedButton.isHidden = false
        }
    }
    
}
