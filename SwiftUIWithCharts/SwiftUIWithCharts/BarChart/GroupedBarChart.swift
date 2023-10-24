//
//  GroupedBarChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import SwiftUI
import Charts
struct GroupedBarChart: View {
    
    let data = MonthlyFinanceDataModel.sampleData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(data.chartTitle)
            
            Chart {
                ForEach(data.categories, id: \.id) { category in
                    ForEach(category.dataPoints, id: \.id) { datapoint in
                        BarMark(x: .value("Month", datapoint.month), y: .value("Amount", datapoint.amount), height: 2, stacking: .center)
                            .foregroundStyle(by: .value("Category", category.categoryName))
                    }
                }
            }
            .chartXAxis(.hidden)
            
            Text(data.chartTitle)
            
            Chart {
                ForEach(data.categories, id: \.id) { category in
                    ForEach(category.dataPoints, id: \.id) { datapoint in
                        BarMark(x: .value("Amount", datapoint.amount), y: .value("Monthg", datapoint.month), height: 2, stacking: .center)
                            .foregroundStyle(by: .value("Category", category.categoryName))
                    }
                }
            }
            .chartYAxis(.hidden)
        })
    }
}

#Preview {
    GroupedBarChart()
}
