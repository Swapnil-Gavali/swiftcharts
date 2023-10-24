//
//  WebsiteVisitorsDataPoint.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation

struct WebsiteVisitorsDataPoint: Identifiable {
    
    let id: UUID = UUID()
    let month: String
    let visitors: Int
    let eventDescription: String
    
    static func getVisitorCount() -> [WebsiteVisitorsDataPoint] {
        [
            WebsiteVisitorsDataPoint(month: "Jan", visitors: 10000, eventDescription: "Campaign Launch"),
            WebsiteVisitorsDataPoint(month: "Feb", visitors: 12000, eventDescription: "Social Media Promotion"),
            WebsiteVisitorsDataPoint(month: "Mar", visitors: 14000, eventDescription: "Email Marketing"),
            WebsiteVisitorsDataPoint(month: "Apr", visitors: 16000, eventDescription: "Content Marketing"),
            WebsiteVisitorsDataPoint(month: "May", visitors: 10000, eventDescription: "Ad Campaign"),
            WebsiteVisitorsDataPoint(month: "Jun", visitors: 21000, eventDescription: "New Product Launch"),
            WebsiteVisitorsDataPoint(month: "Jul", visitors: 22000, eventDescription: "Referral Program"),
            WebsiteVisitorsDataPoint(month: "Aug", visitors: 24000, eventDescription: "Summer Promotion"),
            WebsiteVisitorsDataPoint(month: "Sep", visitors: 20000, eventDescription: "Back-to-School Sale"),
            WebsiteVisitorsDataPoint(month: "Oct", visitors: 28000, eventDescription: "Halloween Special"),
            WebsiteVisitorsDataPoint(month: "Nov", visitors: 31000, eventDescription: "Black Friday"),
            WebsiteVisitorsDataPoint(month: "Dec", visitors: 33000, eventDescription: "Holiday Season"),
        ]
    }
}

