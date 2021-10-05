//
//  ViewController.swift
//  ForwardandReverseGeoCoding
//
//  Created by Sean O'Dowd on 10/5/21.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var reverseLabel: UILabel!
    
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var forwardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reverseButtonClick() {
        
        // Reverse Geo COding

       let lat = 17.3850
       let lon = 78.4867

       if let loc = CLLocation(latitude: lat, longitude: lon) as? CLLocation {

           CLGeocoder().reverseGeocodeLocation(loc, completionHandler: { (placemarks, error) in

               if let placemark1 = placemarks?[0] {
                   let name = placemark1.name!
                   let country = placemark1.country!
                   let adminstrative = placemark1.administrativeArea!
                   let locality = placemark1.locality!
                   let postalCode = placemark1.postalCode!


                   print("\(name), \(adminstrative), \(country), \(locality), \(postalCode)")

                   self.reverseLabel.text = "\(name), \(adminstrative), \(country), \(locality), \(postalCode)"


               }
           })
       }
        
    }
    
    @IBAction func forwardButtonClick() {
        
        // Forward Geo COding

       let address = "Bhagya Reddi Road,TG, India, Hyderabad, 500095"

       CLGeocoder().geocodeAddressString(address, completionHandler: { placemarks, error in
           if (error != nil) {
               return
           }
       
           if let placemark1 = placemarks?[0] {

               let lat = String(format: "%.04f", (placemark1.location?.coordinate.latitude ?? 0.0)!)
               let lon = String(format: "%.04f", (placemark1.location?.coordinate.longitude ?? 0.0)!)
               print("\(lat),\(lon)")

               self.forwardLabel.text = "Latitude: \(lat) and Longitude: \(lon)"

           }

       })
    }
    
    
}

