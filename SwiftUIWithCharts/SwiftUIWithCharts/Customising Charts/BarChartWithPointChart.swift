//
//  BarChartWithPointChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts

struct BarChartWithPointChart: View {
    
    let data = CategoryWithProfitDataModel.sampleData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(data.chartTitle)
            
            Chart {
                ForEach(data.dataPoints, id: \.id) { dataPoint in
                    BarMark(x: .value("Category", dataPoint.categoryName), yStart: .value("Min Profit", dataPoint.minProfit), yEnd: .value("Max Profit", dataPoint.maxProfit), width: 10)
                        .foregroundStyle(Color(UIColor.lightGray))
                        .opacity(0.5)
                    
                    PointMark(x: .value("Category", dataPoint.categoryName), y: .value("Min Profit", dataPoint.minProfit))
                        .symbol(by: .value("Min Profit", dataPoint.minProfit))
                        .symbolSize(81)
                        .foregroundStyle(Color.red)
                    
                    PointMark(x: .value("Category", dataPoint.categoryName), y: .value("Max Profit", dataPoint.maxProfit))
                        .symbol(by: .value("Max Profit", dataPoint.maxProfit))
                        .symbolSize(81)
                        .foregroundStyle(Color.yellow)
                }
            }
            .chartYAxis(.hidden)
        })
    }
}

#Preview {
    BarChartWithPointChart()
}
