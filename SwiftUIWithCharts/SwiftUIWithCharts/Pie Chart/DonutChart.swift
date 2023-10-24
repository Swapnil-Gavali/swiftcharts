//
//  DountChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct DonutChart: View {
    
    let categories = ExpenseCategoryData.expenseData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Dount Chart")
            
            Chart(categories) {
                SectorMark(angle: .value("Expence", $0.amountSpent), innerRadius: .ratio(0.6), outerRadius: .inset(10), angularInset: 2)
                    .foregroundStyle(by: .value("Category", $0.category))
                    .cornerRadius(10)
            }
        })
    }
}

#Preview {
    DonutChart()
}
