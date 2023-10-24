//
//  SelectionView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 24/10/23.
//

import SwiftUI
import Charts
struct SelectionView: View {
    let data = MonthlySales.salesData()
    
    @Binding var rawSelection: String?
    
    var model: MonthlySales? {
        return data.first { model in
            model.month == rawSelection
        }
    }
    
    var popOver: some View {
            let model = model!
            return VStack(alignment: .leading, spacing: 20) {
                Text("Product Sales in Month - \(model.month)")
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading){
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("₹")
                            Text("\(String(format: "%.1f", model.products[0].revenue))")
                        }
                        .font(.title)
                        .foregroundStyle(Color.green)
                        Text(model.products[0].productName)
                    }
                    VStack(alignment: .leading){
                        HStack(alignment: .bottom, spacing: 2) {
                            Text("₹")
                            Text("\(String(format: "%.1f", model.products[1].revenue))")
                        }
                        .font(.title)
                        .foregroundStyle(Color.blue)
                        Text(model.products[1].productName)
                    }
                }
                
            }
            .padding()
            .background(content: {
                Color.gray.opacity(0.1)
            })
            .cornerRadius(15)
           
        }

    
    var body: some View {
        VStack(alignment: .leading, content: {
            if model == nil {
                Text("Scollable Line Chart")
            }
            Chart {
                ForEach(data, id: \.id) { dataPoint in
                    ForEach(dataPoint.products, id: \.id) { product in
                        LineMark(x: .value("Month", dataPoint.month), y: .value("Revenue", product.revenue))
                            .foregroundStyle(by: .value("Product Name", product.productName))
                            .interpolationMethod(.cardinal)
                            .symbol(by:  .value("Product Name", product.productName))
                    }
                }
                if let model = model {
                    RuleMark(x: .value("Month", model.month))
                        .foregroundStyle(Color.gray.opacity(0.3))
                        .offset(yStart: -10)
                        .zIndex(-1)
                        .annotation(position: .top, spacing: 0, overflowResolution: AnnotationOverflowResolution(x: .fit(to: .chart), y: .disabled)) {
                            popOver
                        }
                }
            }
            .chartXSelection(value: $rawSelection)
           
        })
    }
}

#Preview {
    SelectionView(rawSelection: .constant("August"))
        .frame(height: 500)
}
