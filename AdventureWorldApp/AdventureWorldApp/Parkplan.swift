//
//  Parkplan.swift
//  AdventureWorldApp
//
//  Created by Deborah Gäb on 01.11.16.
//  Copyright © 2016 Deborah Gäb. All rights reserved.
//  Fach:Entwicklung interaktiver Systeme
//  Prof: Prof. Dr. K. Fischer und Prof. Dr. G. Hartmann
//  Betreuer: Franz-L. Jaspers
//

/* Hier wird ein noch eine Routenplanung entstehen. DIeses kann Individuell sein, oder vorgeben sein.
 Der Standpunkt wird ermittelt und ein Parkplan wir über die Straßenkarte gelegt.
 
 */
import UIKit
import MapKit
import CoreLocation

class Parkplan: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segmentcontroler: UISegmentedControl!
    @IBAction func navigationSegment(sender: UISegmentedControl) {
        
        if segmentcontroler.selectedSegmentIndex == 0 {
            print("Ihr Standpunkt ist.")
        }
        if segmentcontroler.selectedSegmentIndex == 1{
            print("Ohr Markiert")
        }
        if segmentcontroler.selectedSegmentIndex == 2{
            print("meine Route ist")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    
        let adventureWorld = MKCoordinateRegionMake(CLLocationCoordinate2DMake(51.0226, 7.56), MKCoordinateSpanMake (0.2, 0.2))
        
        mapView.setRegion(adventureWorld, animated: true)
        
    }

    private func cameraSetup(){
        mapView.camera.altitude = 1000
        mapView.camera.pitch = 60
        mapView.camera.heading = 180
    }
    
    
}