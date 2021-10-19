//
//  StaticLocationViewController.swift
//  TicketBookingandWeatherInformation
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit
import MapKit

class StaticLocationViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var coordinateLabel: UILabel!
    
    @IBOutlet weak var tempButton: UIButton!
    @IBOutlet weak var mapButton: UIButton!
    
    @IBOutlet weak var mv1: MKMapView!
    
    @IBOutlet weak var sc1: UISegmentedControl!
    
    var barButton1: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        barButton1 = UIBarButtonItem(title: "Home", style: .plain, target: self, action: #selector(homeButtonClick))
        self.navigationItem.rightBarButtonItem = barButton1
    }
    
    @IBAction func tempButtonClick() {
        
        // 1. Prepare the URL
        let session = URLSession.shared
        let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(tf1.text ?? "")?&APPID=f31356634fbc4c64c86edd02aaf817c2")!
        
        print("weatherURL:\n\(weatherURL)")
        
        // 2. Send request
        let task1 = session.dataTask(with: weatherURL) {
                   (data: Data?, response: URLResponse?, error: Error?) in
            if let error1 = error {
                print("Error:\n\(error1)")
            } else {
                if let data1 = data {

                    // JSON parsing
                                                          
                    if let firstDictionary = try? JSONSerialization.jsonObject(with: data1, options: .allowFragments) as? NSDictionary {
                                                          
                        if let secondDictionary = firstDictionary.value(forKey: "main") as? NSDictionary {
                                                               
                            // to display temperature
                                                               
                            if let temperaturevalue = secondDictionary.value(forKey: "temp") {
                                DispatchQueue.main.async {
                                    
                                    let tempFahrenheit = self.convertTemps(tempKelvin: temperaturevalue as! Double)
                    
                                    self.tempLabel.text = "\(self.tf1.text!) Temperature: \(tempFahrenheit)°F"
                                }
                            }
                                                                  
                        } else {
                            print("Error: unable to find temperature in dictionary")
                        }
                    } else {
                        print("Error: unable to convert JSON data")
                    }
                } else {
                    print("Error: did not receive data")
                }
            }
        }

        task1.resume()
    }
    
    @IBAction func mapButtonClick() {
        
        // Forward Geocoding lookup to grab coordinates
        CLGeocoder().geocodeAddressString(tf1.text!, completionHandler: { placemarks, error in
            if (error != nil) {
                return
            }
        
            if let placemark1 = placemarks?[0] {

                let lat = String(format: "%.04f", (placemark1.location?.coordinate.latitude)!)
                let lon = String(format: "%.04f", (placemark1.location?.coordinate.longitude)!)
                self.coordinateLabel.text = "Latitude: \(lat) and Longitude: \(lon)"
                
                let latitude = Double(lat)!
                let longitude = Double(lon)!
                
                print("\(latitude) and \(longitude)\nLocation values have been obtained")
                
                // Updating the current lat/long to map
                
                let locationValue: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                let region = MKCoordinateRegion(center: locationValue, span: span)
                
                self.mv1.setRegion(region, animated: true)
            }

        })
        
        
    }
    
    @IBAction func sc1Click() {
        
        let index = sc1.selectedSegmentIndex
        if index == 0 {
            mv1.mapType = .standard
        } else if index == 1 {
            mv1.mapType = .satellite
        } else {
            mv1.mapType = .hybrid
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func homeButtonClick() {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    func convertTemps(tempKelvin: Double) -> String {
        
        let newTemp = (tempKelvin - 273.15) * 9/5 + 32
        let newString = String(format: "%.02f", newTemp)
        return newString
    }

}
