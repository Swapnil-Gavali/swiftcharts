//
//  LineChartWithGradient.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts

struct LineChartWithGradient: View {
    
    let data = StepCountData.getStepData()
    
    var body: some View {
        VStack (alignment: .leading, content: {
            Text("Step Data - Line Chart with Gradient")
            
            Chart {
                
                ForEach(data, id: \.id) { step in
                    AreaMark(x: .value("Date", step.date, unit: .day), y: .value("Steps", step.steps))
                        .interpolationMethod(.cardinal)
                        .opacity(0.3)
                    
                    LineMark(x: .value("Date", step.date, unit: .day), y: .value("Steps", step.steps))
                        .interpolationMethod(.cardinal)
                        
                }
                .foregroundStyle(.linearGradient(colors: [.white, .green], startPoint: .bottom, endPoint: .top))
                .lineStyle(StrokeStyle(lineWidth: 4))
                .alignsMarkStylesWithPlotArea()
                
                
            }
            .chartYAxis(.hidden)
        })
    }
}

#Preview {
    LineChartWithGradient()
}
