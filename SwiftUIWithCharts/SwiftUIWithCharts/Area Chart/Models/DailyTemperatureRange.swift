//
//  DailyTemperatureRange.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct DailyTemperatureRange: Identifiable {
    let id: UUID = UUID()
    let day: Int
    let minTemperature: Double
    let maxTemperature: Double
    
    static func getTemperatureData() -> [DailyTemperatureRange] {
        [
            DailyTemperatureRange(day: 1, minTemperature: 10.0, maxTemperature: 20.0),
            DailyTemperatureRange(day: 2, minTemperature: 11.0, maxTemperature: 21.0),
            DailyTemperatureRange(day: 3, minTemperature: 12.0, maxTemperature: 22.0),
            DailyTemperatureRange(day: 4, minTemperature: 11.0, maxTemperature: 21.0),
            DailyTemperatureRange(day: 5, minTemperature: 10.0, maxTemperature: 20.0),
            DailyTemperatureRange(day: 6, minTemperature: 9.0, maxTemperature: 19.0),
            DailyTemperatureRange(day: 7, minTemperature: 8.0, maxTemperature: 18.0),
            DailyTemperatureRange(day: 8, minTemperature: 9.0, maxTemperature: 19.0),
            DailyTemperatureRange(day: 9, minTemperature: 10.0, maxTemperature: 20.0),
            DailyTemperatureRange(day: 10, minTemperature: 12.0, maxTemperature: 22.0),
            DailyTemperatureRange(day: 11, minTemperature: 13.0, maxTemperature: 23.0),
            DailyTemperatureRange(day: 12, minTemperature: 14.0, maxTemperature: 24.0),
            DailyTemperatureRange(day: 13, minTemperature: 15.0, maxTemperature: 25.0),
            DailyTemperatureRange(day: 14, minTemperature: 14.0, maxTemperature: 24.0),
            DailyTemperatureRange(day: 15, minTemperature: 13.0, maxTemperature: 23.0),
            DailyTemperatureRange(day: 16, minTemperature: 12.0, maxTemperature: 22.0),
            DailyTemperatureRange(day: 17, minTemperature: 11.0, maxTemperature: 21.0),
            DailyTemperatureRange(day: 18, minTemperature: 10.0, maxTemperature: 20.0),
            DailyTemperatureRange(day: 19, minTemperature: 9.0, maxTemperature: 19.0),
            DailyTemperatureRange(day: 20, minTemperature: 8.0, maxTemperature: 18.0),
        ]

    }
}
