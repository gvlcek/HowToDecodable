//
//  Forecast.swift
//  WeatherApp
//
//  Created by Guadalupe Vlcek on 27/10/2018.
//  Copyright © 2018 Guadalupe Vlček. All rights reserved.
//

import Foundation

class Forecast: NSObject {
    var status: String = ""
    
    convenience init(_ dict: NSDictionary) {
        self.init()
        
        if let weather = dict.object(forKey: "weather") as? NSArray {
            for case let item as NSDictionary in weather {
                if let main = item.object(forKey: "main") as? String {
                    self.status = main
                }
            }
        }
    }
}
