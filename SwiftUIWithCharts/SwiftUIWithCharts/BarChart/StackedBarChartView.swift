//
//  StackedBarChartView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts

struct StackedBarChartView: View {
    let data = MonthlyExpenses.expensess()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Vertical Stacked Bar Chart")
            Chart {
                ForEach(data, id: \.id) { expence in
                    ForEach(expence.expenseCategories, id: \.id) { categoryExpence in
                        BarMark(x: .value("Category", categoryExpence.category), y: .value("Expence", categoryExpence.amount))
                            .foregroundStyle(by: .value("Month", expence.month))
                    }
                }
            }
            
            Text("Horizontal Stacked Bar Chart")
            Chart {
                ForEach(data, id: \.id) { expence in
                    ForEach(expence.expenseCategories, id: \.id) { categoryExpence in
                        BarMark(x: .value("Expence", categoryExpence.amount), y: .value("Category", categoryExpence.category))
                            .foregroundStyle(by: .value("Month", expence.month))
                    }
                }
            }
        })
    }
}

#Preview {
    StackedBarChartView()
}
