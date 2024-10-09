//
//  MeasurementFormatter+Extensions.swift
//  SwiftUIWeatherApp
//
//  Created by Juan Pablo Lasprilla Correa on 9/10/24.
//

import Foundation

extension MeasurementFormatter {
    
    static func temperature(value: Double) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 0
        
        let Formatter = MeasurementFormatter()
        Formatter.numberFormatter = numberFormatter
        
        let temp = Measurement(value: value, unit: UnitTemperature.kelvin)
        
        return Formatter.string(from: temp)
    }
    
}
