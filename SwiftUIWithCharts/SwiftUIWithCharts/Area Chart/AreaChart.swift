//
//  AreaChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts
struct AreaChart: View {
    
    let data = Pizza.sales()
    var body: some View {
        
        VStack(alignment: .leading, content: {
            Text("Area Chart")
            Chart(data) {
                AreaMark(x: .value("Year", $0.date, unit: .year), y: .value("Sales", $0.totalSales))
                    .foregroundStyle(Color.green)
            }
        })
    }
}

#Preview {
    AreaChart()
}
