//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by PCI Adm on 2/25/22.
//  Copyright © 2022 Nyisztor, Karoly. All rights reserved.
//

import Foundation

class WeatherViewModel: ObservableObject {
    private let weatherService = OpenWeatherMapController()
    
    @Published var weatherInfo: String = ""
    
    func fetch(city: String) {
        weatherService.fetchWeatherData(for: city) { (info, error) in
            guard error == nil,
                  let weatherInfo = info else {
                      DispatchQueue.main.async { [self] in
                          self.weatherInfo = "Could not retrieve weather information for \(city)"
                  }
                  return
            }
            DispatchQueue.main.async {
                self.weatherInfo = weatherInfo
            }
        }
    }
}
