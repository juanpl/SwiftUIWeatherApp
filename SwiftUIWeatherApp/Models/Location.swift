//
//  Location.swift
//  SwiftUIWeatherApp
//
//  Created by Juan Pablo Lasprilla Correa on 8/10/24.
//

import Foundation

struct Location: Decodable {
    let name: String
    let lat: Double
    let lon: Double
}
