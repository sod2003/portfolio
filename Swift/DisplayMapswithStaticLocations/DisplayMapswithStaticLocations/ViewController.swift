//
//  ViewController.swift
//  DisplayMapswithStaticLocations
//
//  Created by Sean O'Dowd on 10/5/21.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView1: MKMapView!
    
    @IBOutlet weak var sc1: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // CoreLocation Coordinate data fed to MapKit processes
        let staticlocation = CLLocationCoordinate2D(latitude: 17.3850, longitude: 78.4867)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.010, longitudeDelta: 0.010)
        
        let region = MKCoordinateRegion(center: staticlocation, span: span)
        
        mapView1.setRegion(region, animated: true)
        
        // Code to display Annotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticlocation
        annotation.title = "Hyderabad"
        annotation.subtitle = "India"
        mapView1.addAnnotation(annotation)
        
    }

    @IBAction func sc1Click() {
        
        let segmentedValue = sc1.selectedSegmentIndex
        
        if segmentedValue == 0 {
            mapView1.mapType = .standard
        } else if segmentedValue == 1 {
            mapView1.mapType = .satellite
        } else {
            mapView1.mapType = .hybrid
        }
    }
    
}

