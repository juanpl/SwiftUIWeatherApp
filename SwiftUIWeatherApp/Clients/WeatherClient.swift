//
//  weatherClient.swift
//  SwiftUIWeatherApp
//
//  Created by Juan Pablo Lasprilla Correa on 8/10/24.
//

import Foundation

struct WeatherClient {
   
    func fetchWeather(location: Location) async throws -> Weather {
        
        let (data, response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .weatherByLatLot(location.lat, location.lon)))
        
        guard let httpresponse = response as? HTTPURLResponse,
            httpresponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
        return weatherResponse.main
    }
    
}
