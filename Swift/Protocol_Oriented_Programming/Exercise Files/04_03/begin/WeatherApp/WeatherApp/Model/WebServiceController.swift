//
//  WebServiceController.swift
//  WeatherApp
//
//  Created by Sean O'Dowd on 2/22/22.
//  Copyright © 2022 Nyisztor, Karoly. All rights reserved.

import Foundation

public enum WebServiceControllerError: Error {
    case invalidURL(String)
    case invalidPayload(URL)
    case forwarded(Error)
}

public protocol WebServiceController {
    func fetchWeatherData(for city: String, completionHandler: (String?, WebServiceControllerError?) -> Void)
}
