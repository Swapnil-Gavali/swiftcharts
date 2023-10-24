//
//  IntervalBarChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts

struct IntervalBarChart: View {
    
    let data = ProductPriceRange.productsPriceRange()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Vertical Interval Bar Chart")
            Chart {
                ForEach(data, id: \.id) { product in
                    BarMark(x: .value("Category", product.category), yStart: .value("Min Price", product.minPrice), yEnd: .value("Mix Price ", product.maxPrice))
                        .foregroundStyle(by: .value("Category", product.category))
                }
            }
            
            Text("Horizontal Interval Bar Chart")
            Chart {
                ForEach(data, id: \.id) { product in
                    BarMark(xStart: .value("Min Price", product.minPrice), xEnd: .value("Max Price", product.maxPrice), y: .value("Product ", product.category))
                        .foregroundStyle(by: .value("Category", product.category))
                }
            }
        })
    }
}

#Preview {
    IntervalBarChart()
}
