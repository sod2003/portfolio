//
//  CurrentLocationViewController.swift
//  TicketBookingandWeatherInformation
//
//  Created by Sean O'Dowd on 10/13/21.
//

import UIKit
import CoreLocation

class CurrentLocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var longLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var locationButton: UIButton!
    @IBOutlet weak var weatherButton: UIButton!
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var humidLabel: UILabel!
    @IBOutlet weak var feelsButton: UILabel!
    
    var barButton1: UIBarButtonItem!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        barButton1 = UIBarButtonItem(title: "Home", style: .plain, target: self, action: #selector(homeButtonClick))
        self.navigationItem.rightBarButtonItem = barButton1
    }
    
    @IBAction func locationClick() {
        
        if CLLocationManager.locationServicesEnabled() {
            
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        
        } else {
            
            print("Services are not enabled")
        }
    }
    
    @IBAction func weatherClick() {
        
        let latString = latLabel.text!
        let lat = Double(latString)
        let lonString = longLabel.text!
        let lon = Double(lonString)

        var locationString = ""
        
        guard (lat != nil) && (lon != nil) else {
            print("Can't capture lat, long values!")
            return
        }
        if let loc = CLLocation(latitude: lat!, longitude: lon!) as? CLLocation {

            CLGeocoder().reverseGeocodeLocation(loc, completionHandler: { (placemarks, error) in

                if let placemark1 = placemarks?[0] {
                    let name = placemark1.name!
                    let country = placemark1.country!

                    locationString = "\(name),\(country)"
                }
            })
        }
        
        // 1. Prepare the URL
        let session = URLSession.shared
        let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(locationString )?&APPID=f31356634fbc4c64c86edd02aaf817c2")!
        
        print("weatherURL:\n\(weatherURL)")
        
        // 2. Send request
        let task1 = session.dataTask(with: weatherURL) {
                   (data: Data?, response: URLResponse?, error: Error?) in
            if let error1 = error {
                print("Error:\n\(error1)")
            } else {
                if let data1 = data {
                    // coverting bytes to String

                    let dataString = String(data: data1, encoding: String.Encoding.utf8)

                    print("All the weather data:\n\(dataString!)")
                    
                    // JSON parsing
                                                          
                    if let firstDictionary = try? JSONSerialization.jsonObject(with: data1, options: .allowFragments) as? NSDictionary {
                                                       
                        print("first Dictionary values: \(firstDictionary)")
                                                          
                        if let secondDictionary = firstDictionary.value(forKey: "main") as? NSDictionary {
                                                                  
                            print("main Dictionary values are: \(secondDictionary)")
                                                               
                            // to display temperature
                                                               
                            if let temperaturevalue = secondDictionary.value(forKey: "temp") {
                                DispatchQueue.main.async {
                    
                                    self.tempLabel.text = "Temperature: \(temperaturevalue)°F"
                                }
                            }
                                                               
                            // to display humidity
                                                               
                            if let humidityvalue = secondDictionary.value(forKey: "humidity") {
                                DispatchQueue.main.async {
                                    
                                    self.humidLabel.text = "Humidity: \(humidityvalue)"
                                }
                            }
                                                               
                            // to display feels like
                                                               
                            if let feelsLikevalue = secondDictionary.value(forKey: "feels_like") {
                                DispatchQueue.main.async {
                                    
                                    self.feelsButton.text = "Feels Like: \(feelsLikevalue)"
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let lat = manager.location!.coordinate.latitude
        let long = manager.location!.coordinate.longitude
        
        latLabel.text = "latitude: \(lat)"
        longLabel.text = "longitude: \(long)"
        
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
    }
    
    @objc func homeButtonClick() {
        
        navigationController?.popToRootViewController(animated: true)
    }

}
