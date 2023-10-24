//
//  PointChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts
struct PointChart: View {
    let data = WebsiteData.websites()
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Point Chart")
            Chart {
                ForEach(data, id: \.id) { website in
                    ForEach(website.dataPoints, id: \.id) { dataPoint in
                        PointMark(x: .value("Page View", dataPoint.pageViews), y: .value("Visitors", dataPoint.visitors))
                            .foregroundStyle(by: .value("Website Name", website.websiteName))
                            .symbol(by: .value("Wensite Name", website.websiteName))
                    }
                    
                }
            }
        })
    }
}

#Preview {
    PointChart()
}
