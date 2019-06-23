//
//  WeatherClasses.swift
//  WeatherApp
//
//  Created by Guadalupe Vlcek on 01/11/2018.
//  Copyright © 2018 Guadalupe Vlček. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let list:[List]
}

struct List: Decodable {
    let temp:Temp
    let weather: [Weather]
}

struct Temp: Decodable {
    let day:Double?
    let min:Double?
    let max:Double?
}

struct Weather: Decodable {
    let main:String?
}
