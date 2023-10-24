//
//  RangeArea.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct RangeArea: View {
    
    let data = DailyTemperatureRange.getTemperatureData()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Range area Chart")
            Chart {
                ForEach(data, id: \.id) { temperature in
                    AreaMark(x: .value("Daye", temperature.day), yStart: .value("Min Tem", temperature.minTemperature),yEnd: .value("Max Temp", temperature.maxTemperature))
                        .foregroundStyle(Color.cyan)
                }
            }
        })
    }
}

#Preview {
    RangeArea()
}
