//
//  Parkplan.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//


import UIKit
import MapKit
import CoreLocation

class Parkplan: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        
        
            self.locationManager.delegate = self
            self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
            self.locationManager.requestWhenInUseAuthorization()
            self.locationManager.startUpdatingLocation()
            self.mapView.showsUserLocation = true
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
    
        func locationManager( manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            //Meine letzte Position
            let location = locations.last
            
            //Meine Position in der Mitte anzeigen
            let center = CLLocationCoordinate2DMake(location!.coordinate.latitude, location!.coordinate.longitude)
            
            
            let region = MKCoordinateRegion(center: center,span: MKCoordinateSpan(latitudeDelta:  1.0, longitudeDelta:  1.0))
            
            self.mapView.setRegion(region, animated: true)
                
            self.locationManager.stopUpdatingLocation()
            
                
        }
    @IBAction func buttenMeinePositionAnzeigen(sender: UIButton) {
     //   mapView!.showsUserLocation
    }
        func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Fehler: " + (error).localizedDescription)
    }
}