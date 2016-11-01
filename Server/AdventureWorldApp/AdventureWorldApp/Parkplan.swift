//
//  Parkplan.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//


import UIKit
import MapKit

class Parkplan: UIViewController, MKMapViewDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            mapView.delegate = self
            
            let adventureWorld = MKCoordinateRegionMake(CLLocationCoordinate2DMake(51.52007, 7.5621), MKCoordinateSpanMake(0.01, 0.01))
            
            mapView.setRegion(adventureWorld, animated: true)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        private func cameraSetup(){
            mapView.camera.altitude = 1000
            mapView.camera.pitch = 60
            mapView.camera.heading = 180
        }
        /*
         func meinStandpunkt() -> (String) {
         
         return "meinStandpunkt"
         }
         */
        
        
    }

