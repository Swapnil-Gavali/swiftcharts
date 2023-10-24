//
//  GroupLineChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct GroupLineChart: View {
    
    let data = MonthlyTemperatureData.temperatureData()
    
    var body: some View {
        
        VStack(alignment: .leading, content: {
            Text("Group Line Chart")
            
            Chart {
                ForEach(data, id: \.id) { monthTemparatureData in
                    ForEach(monthTemparatureData.cityTemperatures, id: \.id) { model in
                        LineMark(x: .value("Month", monthTemparatureData.month), y: .value("Temperature", model.temperature))
                            .interpolationMethod(.cardinal)
                            .foregroundStyle(by: .value("City", model.city))
                            .symbol(by: .value("City", model.city))
                    }
                }
            }
        })
        
    }
}

#Preview {
    GroupLineChart()
}
