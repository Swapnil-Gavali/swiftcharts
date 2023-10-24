//
//  OneDBarChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts

struct OneDBarChart: View {
    
    let data = Product.productsSales()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Horizontal One D Bar Chart")
            Chart {
                ForEach(data, id: \.id) { product in
                    BarMark(x: .value("Sales", product.salesAmount))
                        .foregroundStyle(by: .value("Name", product.productName))
                        .position(by: .value("Name", product.productName))
                }
            }
            
            Text("Vertical One D Bar Chart")
            Chart {
                ForEach(data, id: \.id) { product in
                    BarMark(y: .value("Sales", product.salesAmount))
                        .foregroundStyle(by: .value("Name", product.productName))
                        .position(by: .value("Name", product.productName))
                }
            }
        })
    }
}

#Preview {
    OneDBarChart()
}
