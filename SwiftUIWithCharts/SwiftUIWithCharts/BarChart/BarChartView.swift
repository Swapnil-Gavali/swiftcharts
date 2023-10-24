//
//  BarChartView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts
struct BarChartView: View {
    
    let sales = Sales.sales()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Vertical Bar Chart")
            Chart(sales, id: \.id) { sale in
                BarMark(x: .value("Category", sale.category), y: .value("Amount", sale.salesAmount))
                    .foregroundStyle(.red)
            }
            Text("Horizontal Bar Chart")
            
            Chart(sales, id: \.id) { sale in
                BarMark(x: .value("Amount", sale.salesAmount), y: .value("Category", sale.category))
                    .foregroundStyle(.green)
            }
        }
        
    }
}

#Preview {
    BarChartView()
}
