//
//  OpenWeatherMapController.swift
//  WeatherApp
//
//  Created by PCI Adm on 2/24/22.
//  Copyright © 2022 Nyisztor, Karoly. All rights reserved.

import Foundation

private enum API {
    static let key =  "" //Add personal API key here
}

class OpenWeatherMapController: WebServiceController {
    func fetchWeatherData(for city: String, completionHandler: (String?, WebServiceControllerError?) -> Void) {
        // api.openweathermap.org/data/2.5/find?q=London&units=imperial
        let endpoint = "https://api.openweathermap.org/data/2.5/find?q=\(city)&units=imperial&appid=\(API.key)"
        
        guard let safeURLString = endpoint.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed), let endpointURL = URL(string: safeURLString) else {
            completionHandler(nil, WebServiceControllerError.invalidURL(endpoint))
            return
        }
    }
    
}
