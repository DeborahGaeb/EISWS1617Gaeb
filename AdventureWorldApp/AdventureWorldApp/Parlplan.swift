//
//  Parlplan.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 14.01.17.
//  Copyright © 2017 Deborah Gäb. All rights reserved.
//


import UIKit
import MapKit
import CoreLocation

class Parkplan: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    @IBOutlet weak var gpsKarte: MKMapView!
    
    @IBOutlet weak var segNavibar: UISegmentedControl!
    
    @IBAction func segNavChoice(_ sender: Any) {
    }
    var corLocMan = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corLocMan.delegate = self
        corLocMan.requestWhenInUseAuthorization()
        
        corLocMan.desiredAccuracy = kCLLocationAccuracyBest
        corLocMan.startUpdatingLocation()
        gpsKarte.delegate = self
        let span:CLLocationDegrees = 1000
        //GPs Koordinaten der TH
        gpsKarte.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(51.0229163, 7.562618899999961), span, span), animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
