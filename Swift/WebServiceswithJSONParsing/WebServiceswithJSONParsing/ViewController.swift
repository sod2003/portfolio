//
//  ViewController.swift
//  WebServiceswithJSONParsing
//
//  Created by Sean O'Dowd on 10/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    
    @IBOutlet weak var b1: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func b1Click() {
        
        // Send request to server
        
        // 1. Prepare the URL
        let session = URLSession.shared
        let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(tf1.text ?? "Atlanta,US")?&APPID=f31356634fbc4c64c86edd02aaf817c2")!
        
        print("weatherURL:\n\(weatherURL)")
        
        // 2. Send request
        let task1 = session.dataTask(with: weatherURL) {
                   (data: Data?, response: URLResponse?, error: Error?) in
            if let error1 = error {
                print("Error:\n\(error1)")
            } else {
                if let data1 = data {
                    // server sents data in the form of bytes

                    print("Bytes Data:\n\(data1)")

                    // coverting bytes to String

                    let dataString = String(data: data1, encoding: String.Encoding.utf8)

                    print("All the weather data:\n\(dataString!)")

                    
                    // json parsing
                                                          
                    if let firstDictionary = try? JSONSerialization.jsonObject(with: data1, options: .allowFragments) as? NSDictionary {
                                                       
                        print("first Dictionary values: \(firstDictionary)")
                                                          
                        if let secondDictionary = firstDictionary.value(forKey: "main") as? NSDictionary {
                                                                  
                            print("main Dictionary values are: \(secondDictionary)")
                                                               
                                                               
                            // to display temperature
                                                               
                            if let temperaturevalue = secondDictionary.value(forKey: "temp") {
                                DispatchQueue.main.async {
                                    print("\(self.tf1.text!): \(temperaturevalue)°F")
                    
                                    self.label1.text = "\(self.tf1.text!) Temperature: \(temperaturevalue)°F"
                                }
                            }
                                                               
                            // to display Humidity
                                                               
                            if let humidityvalue = secondDictionary.value(forKey: "humidity") {
                                DispatchQueue.main.async {
                                    print("\(self.tf1.text!): \(humidityvalue)")
                                    
                                    self.label2.text = "\(self.tf1.text!) Humidity: \(humidityvalue)"
                                }
                            }
                                                               
                            // to display feels like
                                                               
                            if let feelsLikevalue = secondDictionary.value(forKey: "feels_like") {
                                DispatchQueue.main.async {
                                    print("\(self.tf1.text!): \(feelsLikevalue)")
                                    self.label3.text = "\(self.tf1.text!) Feels Like: \(feelsLikevalue)"
                                }
                            }
                                                                  
                        } else {
                            print("Error: unable to find temperature in dictionary")
                        }
                    } else {
                        print("Error: unable to convert json data")
                    }
                } else {
                    print("Error: did not receive data")
                }
            }
        }

        task1.resume()
    }
        
}
    

