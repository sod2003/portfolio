//
//  OpenWeatherMapController.swift
//  WeatherApp
//
//  Created by Nyisztor, Karoly on 11/9/19.
//  Copyright © 2019 Nyisztor, Karoly. All rights reserved.
//

import Foundation

//!!! Get your own API key at http://openweathermap.org
private enum API {
    static let key = ""
}


final class OpenWeatherMapController: WebServiceController {
    func fetchWeatherData(for city: String,
                          completionHandler: @escaping (String?, WebServiceControllerError?) -> Void) {
        let endpoint = "http://api.openweathermap.org/data/2.5/find?q=\(city)&units=imperial&appid=\(API.key)"
        // create a string that can be used in URLs
        
        guard let safeURLString = endpoint.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
            let endpointURL = URL(string: safeURLString) else {
            completionHandler(nil, WebServiceControllerError.invalidURL(endpoint))
            return
        }
        
        let dataTask = URLSession.shared.dataTask(with: endpointURL, completionHandler: { (data, response, error) in
            guard error == nil else {
                completionHandler(nil, WebServiceControllerError.forwarded(error!))
                return
            }
            
            guard let responseData = data else {
                completionHandler(nil, WebServiceControllerError.invalidPayload(endpointURL))
                return
            }
            
            // Decoding the JSON data
            let decoder = JSONDecoder()
            do {
                let weatherList = try decoder.decode(OpenWeatherMapContainer.self, from: responseData)
                guard let weatherInfo = weatherList.list?.first,
                      let weather = weatherInfo.weather.first?.main,
                      let temperature = weatherInfo.main.temp else {
                          completionHandler(nil, WebServiceControllerError.invalidPayload(endpointURL))
                      return
                      }
                
                // Displaying the Weather Information
                let weatherDescription = "\(weather) \(temperature) °F"
                completionHandler(weatherDescription, nil)
            } catch let error {
                completionHandler(nil, WebServiceControllerError.forwarded(error))
            }
        })
        
        dataTask.resume()
    }
}
