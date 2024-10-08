//
//  Weather.swift
//  SwiftUIWeatherApp
//
//  Created by Juan Pablo Lasprilla Correa on 8/10/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let feels_like: Double
}
