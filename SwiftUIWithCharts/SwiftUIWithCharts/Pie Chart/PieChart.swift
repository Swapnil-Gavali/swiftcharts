//
//  PieChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct PieChart: View {
    
    let data = ExpenseCategoryData.expenseData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Pie Chart")
            
            Chart(data) {
                SectorMark(angle: .value("Amount", $0.amountSpent))
                    .foregroundStyle(by: .value("Category", $0.category))
            }
        })
    }
}

#Preview {
    PieChart()
}
