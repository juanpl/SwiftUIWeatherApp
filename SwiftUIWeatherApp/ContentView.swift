//
//  ContentView.swift
//  SwiftUIWeatherApp
//
//  Created by Juan Pablo Lasprilla Correa on 8/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Get Coordinates") {
                Task {
                    let geocodingClient = GeocodingClient()
                    let location = try! await geocodingClient.coordinateByCity("Tokio")
                    print(location)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
