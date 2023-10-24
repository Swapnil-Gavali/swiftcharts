//
//  AreaChartWithLineChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts
struct AreaChartWithLineChart: View {
    let data = CategoryWithProfitDataModel.sampleData()
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(data.chartTitle)
            
            Chart {
                ForEach(data.dataPoints, id: \.id) { dataPoin in
                    AreaMark(x: .value("Category", dataPoin.categoryName), yStart: .value("Min Profi", dataPoin.minProfit), yEnd: .value("Max Profit", dataPoin.maxProfit))
                        .foregroundStyle(Color.purple)
                        .opacity(0.3)
                    
                    LineMark(x: .value("category", dataPoin.categoryName), y: .value("Average Profit", dataPoin.avarage))
                        .foregroundStyle(Color.purple)
                }
            }
            .chartYAxis(.hidden)
        })
    }
}

#Preview {
    AreaChartWithLineChart()
}
