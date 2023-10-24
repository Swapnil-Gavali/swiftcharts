//
//  TemperatureDataModel.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import Foundation
struct TemperatureDataModel {
    let chartTitle: String
    let dataPoints: [TemperatureData]

    struct TemperatureData: Identifiable {
        let date: Date
        let temperature: Double
        let hourlyData: [PointChartData]
        let id: UUID = UUID()
    }

    struct PointChartData: Identifiable {
        let date: Date
        let temperature: Double
        let id: UUID = UUID()
    }

    static func sampleData() -> TemperatureDataModel {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        var dataPoints: [TemperatureData] = []
        var date = Date()
        for day in 1...30 {
            let dateStr = "2023-01-\(day)"
            date = dateFormatter.date(from: dateStr) ?? Date.now
            let temperature = 15.0 + Double(day) * Double.random(in: -1...1)

            var pointChartData: [PointChartData] = []

            for hour in [0,6,12,18] {
                let calendar = Calendar.current
                let newDate = calendar.date(byAdding: .hour, value: hour, to: date) ?? Date.now
                let hourTemperature = temperature + Double(hour) * Double.random(in: -0.5...0.5)
                pointChartData.append(PointChartData(date: newDate, temperature: hourTemperature))
            }

            dataPoints.append(TemperatureData(date: date, temperature: temperature, hourlyData: pointChartData))
        }

        return TemperatureDataModel(chartTitle: "Daily Temperature in January 2023", dataPoints: dataPoints)
    }
}
