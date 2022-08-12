//
//  WeatherResponse.swift
//  WatchWeatherApp WatchKit Extension
//
//  Created by yeekim on 2022/08/09.
//

import Foundation

struct WeatherResponse: Codable {
    var forecast: [WeatherModel]
}
