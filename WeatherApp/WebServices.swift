//
//  WebServices.swift
//  WeatherApp
//
//  Created by Guadalupe Vlcek on 27/10/2018.
//  Copyright © 2018 Guadalupe Vlček. All rights reserved.
//

import Foundation
import Foundation

class WebService: NSObject {

static func fetchForecast(completionHandler: @escaping (WeatherResponse) -> ()){
    
    let urlString = "http://api.openweathermap.org/data/2.5/forecast/daily?q=buenos%20aires&mode=&units=metric&APPID=3d7fafd6fbae7ba96a7b3fa31bd0ce6b"
    
    guard let requestUrl = URL(string:urlString) else { return }
    let request = URLRequest(url:requestUrl)
    let task = URLSession.shared.dataTask(with: request) {
        (data, response, error) in
        guard let data = data else { return }
        do {
            let forecasts = try JSONDecoder().decode(WeatherResponse.self, from: data)
            completionHandler(forecasts)
        } catch let error {
            print(error)
        }
    }
    task.resume()
}

}
