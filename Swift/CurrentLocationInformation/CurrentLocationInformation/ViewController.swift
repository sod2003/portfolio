//
//  ViewController.swift
//  CurrentLocationInformation
//
//  Created by Sean O'Dowd on 10/6/21.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var mapKitView: MKMapView!
    
    @IBOutlet weak var sc1: UISegmentedControl!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func b1Click() {
        
        if CLLocationManager.locationServicesEnabled() {
            
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        
        } else {
            
            print("Services are not enabled")
        }
    }
    
    // CLLocationManagerDelegate Protocol Methods
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let lat = manager.location!.coordinate.latitude
        let long = manager.location!.coordinate.longitude
        
        print("\(lat) and \(long)")
        
        latLabel.text = "latitude: \(lat)"
        longLabel.text = "longitude: \(long)"
        
        statusLabel.text = "Location values have been obtained"
        
        // Updating the current lat/long to map
        
        let locationValue: CLLocationCoordinate2D = manager.location!.coordinate
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: locationValue, span: span)
        
        mapKitView.setRegion(region, animated: true)
        
        // Updating Annotation on current coordinates
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationValue
        annotation.title = "Current Location Found"
        annotation.subtitle = "You are Here!!!"
        mapKitView.addAnnotation(annotation)
        
        // Getting current location address using reverse geocoding
        
        if let loc = CLLocation(latitude: lat, longitude: long) as? CLLocation {
            
            CLGeocoder().reverseGeocodeLocation(loc, completionHandler: {(placemarks, error) in
                if let placemark1 = placemarks?[0] {
                    let name = placemark1.name!
                    let country = placemark1.country!
                    let adminstrative = placemark1.administrativeArea!
                    let locality = placemark1.locality!
                    let postalCode = placemark1.postalCode!
                    
                    print("\(name), \(adminstrative), \(country), \(locality), \(postalCode)")

                    self.addressLabel.text = "\(name), \(adminstrative), \(country), \(locality), \(postalCode)"
                }
            }
        )}
        
        locationManager.stopUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        
        print("\(error)")
        
        statusLabel.text = "Error: \(error)"
    }
    
    // User clicks Segmented Controller
    
    @IBAction func sc1Click() {
        
        let index = sc1.selectedSegmentIndex
        if index == 0 {
            mapKitView.mapType = .standard
        } else if index == 1 {
            mapKitView.mapType = .satellite
        } else {
            mapKitView.mapType = .hybrid
        }
    }
    
}

