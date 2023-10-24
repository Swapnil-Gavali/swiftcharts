//
//  MonthlyTempertureData.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation

struct MonthlyTemperatureData: Identifiable {
    
    let id: UUID = UUID()
    let month: String
    let cityTemperatures: [CityTemperature]
    
    struct CityTemperature: Identifiable {
        
        let id: UUID = UUID()
        let city: String
        let temperature: Double
    }

    
    static func temperatureData() -> [MonthlyTemperatureData] {
        [
            MonthlyTemperatureData(month: "January", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 32.0),
                CityTemperature(city: "Los Angeles", temperature: 65.0),
                CityTemperature(city: "Chicago", temperature: 20.0),
            ]),
            MonthlyTemperatureData(month: "February", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 35.0),
                CityTemperature(city: "Los Angeles", temperature: 68.0),
                CityTemperature(city: "Chicago", temperature: 25.0),
            ]),
            MonthlyTemperatureData(month: "March", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 45.0),
                CityTemperature(city: "Los Angeles", temperature: 72.0),
                CityTemperature(city: "Chicago", temperature: 35.0),
            ]),
            MonthlyTemperatureData(month: "April", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 55.0),
                CityTemperature(city: "Los Angeles", temperature: 78.0),
                CityTemperature(city: "Chicago", temperature: 45.0),
            ]),
            MonthlyTemperatureData(month: "May", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 65.0),
                CityTemperature(city: "Los Angeles", temperature: 85.0),
                CityTemperature(city: "Chicago", temperature: 55.0),
            ]),
            MonthlyTemperatureData(month: "June", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 75.0),
                CityTemperature(city: "Los Angeles", temperature: 90.0),
                CityTemperature(city: "Chicago", temperature: 65.0),
            ]),
            MonthlyTemperatureData(month: "July", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 80.0),
                CityTemperature(city: "Los Angeles", temperature: 95.0),
                CityTemperature(city: "Chicago", temperature: 70.0),
            ]),
            MonthlyTemperatureData(month: "August", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 78.0),
                CityTemperature(city: "Los Angeles", temperature: 92.0),
                CityTemperature(city: "Chicago", temperature: 68.0),
            ]),
            MonthlyTemperatureData(month: "September", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 70.0),
                CityTemperature(city: "Los Angeles", temperature: 88.0),
                CityTemperature(city: "Chicago", temperature: 60.0),
            ]),
            MonthlyTemperatureData(month: "October", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 60.0),
                CityTemperature(city: "Los Angeles", temperature: 80.0),
                CityTemperature(city: "Chicago", temperature: 50.0),
            ]),
            MonthlyTemperatureData(month: "November", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 50.0),
                CityTemperature(city: "Los Angeles", temperature: 72.0),
                CityTemperature(city: "Chicago", temperature: 40.0),
            ]),
            MonthlyTemperatureData(month: "December", cityTemperatures: [
                CityTemperature(city: "New York", temperature: 40.0),
                CityTemperature(city: "Los Angeles", temperature: 65.0),
                CityTemperature(city: "Chicago", temperature: 30.0),
            ]),
        ]

    }
}


