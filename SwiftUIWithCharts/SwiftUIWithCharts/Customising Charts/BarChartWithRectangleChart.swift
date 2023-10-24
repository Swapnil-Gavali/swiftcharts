//
//  BarChartWithRectangleChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts
struct BarChartWithRectangleChart: View {
    let data = CategoryWithProfitDataModel.sampleData()
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(data.chartTitle)
            
            Chart {
                ForEach(data.dataPoints, id: \.id) { dataPoint in
                    BarMark(x: .value("Category", dataPoint.categoryName), yStart: .value("Min Profit", dataPoint.minProfit), yEnd: .value("Max Profit", dataPoint.maxProfit))
                        .foregroundStyle(Color.pink)
                        .opacity(0.3)
                        .cornerRadius(5)
                    
                    RectangleMark(x: .value("Category", dataPoint.categoryName), y: .value("Average", dataPoint.avarage), height: 2)
                        .foregroundStyle(Color.pink)
                }
            }
            .chartYAxis(.hidden)
        })
    }
}

#Preview {
    BarChartWithRectangleChart()
}
