//
//  WebsiteData.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation

struct WebsiteData: Identifiable {
    let id: UUID = UUID()
    let websiteName: String
    let dataPoints: [DataPoint]

    struct DataPoint: Identifiable {
        let id: UUID = UUID()
        let month: String
        let visitors: Int
        let pageViews: Int
    }

    static func websites() -> [WebsiteData] {
        let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]

        let website1DataPoints: [DataPoint] = months.map { month in
            DataPoint(month: month, visitors: Int.random(in: 10000...20000), pageViews: Int.random(in: 10000...20000))
        }

        let website2DataPoints: [DataPoint] = months.map { month in
            DataPoint(month: month, visitors: Int.random(in: 8000...18000), pageViews: Int.random(in: 30000...40000))
        }

        let website3DataPoints: [DataPoint] = months.map { month in
            DataPoint(month: month, visitors: Int.random(in: 12000...22000), pageViews: Int.random(in: 50000...60000))
        }

        let websiteData: [WebsiteData] = [
            WebsiteData(websiteName: "Website A", dataPoints: website1DataPoints),
            WebsiteData(websiteName: "Website B", dataPoints: website2DataPoints),
            WebsiteData(websiteName: "Website C", dataPoints: website3DataPoints)
        ]

        return websiteData
    }
}
