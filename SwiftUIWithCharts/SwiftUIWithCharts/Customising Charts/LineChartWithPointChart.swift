//
//  LineChartWithPointChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts
struct LineChartWithPointChart: View {
    
    let data = TemperatureDataModel.sampleData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(data.chartTitle)
            
            Chart {
                
                ForEach(data.dataPoints, id: \.id) { temperature in
                    ForEach(temperature.hourlyData, id: \.id) { dataPoint in
                        PointMark(x: .value("hour", dataPoint.date, unit: .hour), y: .value("Temperature", dataPoint.temperature))
                            .foregroundStyle(Color.pink)
                            .opacity(0.3)
                    }
                    
                    LineMark(x: .value("Day", temperature.date, unit: .day), y: .value("Temperature", temperature.temperature))
                        .foregroundStyle(Color.pink)
                        .interpolationMethod(.cardinal)
                }
                
            }
        })
    }
}

#Preview {
    LineChartWithPointChart()
}
