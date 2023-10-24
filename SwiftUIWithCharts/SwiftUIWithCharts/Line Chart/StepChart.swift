//
//  StepChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct StepChart: View {
    
    let data = WebsiteVisitorsDataPoint.getVisitorCount()
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Step Chart")
            Chart(data, id: \.id) { website in
                LineMark(x: .value("Month", website.month), y: .value("Visitirs", website.visitors))
                    .foregroundStyle(Color.purple)
                    .interpolationMethod(.stepStart)
            }
        })
    }
}

#Preview {
    StepChart()
}
