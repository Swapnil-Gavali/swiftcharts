//
//  LineChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts

struct LineChart: View {
    
    let data = StepCountData.getStepData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Line Chart")
            Chart {
                ForEach(data, id: \.id) { stepCount in
                    LineMark(x: .value("Date", stepCount.date, unit: .day), y: .value("Steps", stepCount.steps))
                        .foregroundStyle(Color.purple)
                        .interpolationMethod(.cardinal)
                }
            }
        })
    }
}

#Preview {
    LineChart()
}
