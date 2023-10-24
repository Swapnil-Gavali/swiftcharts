//
//  CandlestickView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 24/10/23.
//

import SwiftUI
import Charts

struct CandlestickView: View {
    
    let data = Candlestick.sampleData()
    
    var lowerBound: Double {
            data.min { $0.low < $1.low }?.low ?? 100
        }
        
        var colors: [Color] {
            var candlestickColors: [Color] = []
            candlestickColors.append(.green)
            for i in 1 ..< data.count {
                let previousClose = data[i - 1].close
                let currentOpen = data[i].open
                
                if previousClose > currentOpen {
                    candlestickColors.append(.green)
                } else {
                    candlestickColors.append(.red)
                }
            }
            return candlestickColors
        }
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Candlestick Chart")
            
            Chart {
                ForEach(data, id: \.id) { model in
                    BarMark(x: .value("date", model.date, unit: .day), yStart: .value("Low Price", model.low), yEnd: .value("High Price", model.high), width: 1)
                        .foregroundStyle(colors[data.firstIndex(of: model) ?? 0])
                    
                    BarMark(x: .value("Date", model.date, unit: .day), yStart: .value("Open Price", model.open), yEnd: .value("close Price", model.close), width: 8)
                        .foregroundStyle(colors[data.firstIndex(of: model) ?? 0])
                }
            }
            .chartYAxis {
                AxisMarks(preset: .inset, values: .automatic(minimumStride: lowerBound))
            }
        })
    }
}

#Preview {
    CandlestickView()
}
