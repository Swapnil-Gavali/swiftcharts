//
//  ScollableView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 24/10/23.
//

import SwiftUI
import Charts
struct ScollableView: View {
    let data = MonthlySales.salesData()
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Scollable Line Chart")
            Chart {
                ForEach(data, id: \.id) { dataPoint in
                    ForEach(dataPoint.products, id: \.id) { product in
                        LineMark(x: .value("Month", dataPoint.month), y: .value("Revenue", product.revenue))
                            .foregroundStyle(by: .value("Product Name", product.productName))
                            .interpolationMethod(.cardinal)
                            .symbol(by:  .value("Product Name", product.productName))
                    }
                }
            }
            .chartScrollableAxes(.horizontal)
            .chartXVisibleDomain(length: 4)
        })
    }
}

#Preview {
    ScollableView()
}
