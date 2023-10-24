//
//  RectangleChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct RectangleChart: View {
    
    let data = MatrixEntry.getMatrixEntry()
    let data1 = Coord.getCoords()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Rectangle Chart")
            
            Chart(data) {
                RectangleMark(x: .value("Positive", $0.positive), y: .value("Negative", $0.negative))
                    .foregroundStyle(by: .value("Number", $0.num))
            }
            
            Chart(data1) {
                RectangleMark(xStart: .value("X Start", $0.xStart), xEnd: .value("X End", $0.xEnd), yStart: .value("Y Start", $0.yStart), yEnd: .value("Y End", $0.yEnd))
                    .foregroundStyle(by: .value("X Start", $0.xStart))
                
            }
            
        })
    }
}

#Preview {
    RectangleChart()
}
