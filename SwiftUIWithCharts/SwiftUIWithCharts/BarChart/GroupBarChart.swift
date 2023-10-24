//
//  GroupBarChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts
struct GroupBarChart: View {
    
    let data = MonthlyExpenses.expensess()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Vertical Group Bar Chart")
            Chart {
                ForEach(data, id: \.id) { expence in
                    ForEach(expence.expenseCategories, id: \.id) { category in
                        BarMark(x: .value("Category", category.category), y: .value("Amount", category.amount))
                            .foregroundStyle(by: .value("Months", expence.month))
                            .position(by: .value("Months", expence.month))
                    }
                }
            }
            
            Text("Horizontal Group Bar Chart")
            Chart {
                ForEach(data, id: \.id) { expence in
                    ForEach(expence.expenseCategories, id: \.id) { category in
                        BarMark(x: .value("Amount", category.amount), y: .value("Category", category.category))
                            .foregroundStyle(by: .value("Months", expence.month))
                            .position(by: .value("Months", expence.month))
                    }
                }
            }
        })
    }
}

#Preview {
    GroupBarChart()
}
