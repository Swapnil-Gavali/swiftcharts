//
//  CandleSticDataModel.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 24/10/23.
//

import Foundation

struct Candlestick: Identifiable, Equatable {
    let id: UUID = UUID()
    let date: Date
    let open: Double
    let close: Double
    let high: Double
    let low: Double
    
    
    static func sampleData() -> [Candlestick] {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"

        return [
            Candlestick(date: dateFormatter.date(from: "2023-01-01")!, open: 100.0, close: 120.0, high: 130.0, low: 95.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-02")!, open: 120.0, close: 110.0, high: 125.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-03")!, open: 110.0, close: 131.0, high: 135.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-04")!, open: 130.0, close: 115.0, high: 135.0, low: 110.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-05")!, open: 115.0, close: 105.0, high: 120.0, low: 95.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-06")!, open: 105.0, close: 127.0, high: 130.0, low: 100.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-07")!, open: 125.0, close: 135.0, high: 140.0, low: 120.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-08")!, open: 135.0, close: 133.0, high: 140.0, low: 125.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-09")!, open: 130.0, close: 115.0, high: 135.0, low: 110.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-10")!, open: 115.0, close: 125.0, high: 130.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-11")!, open: 125.0, close: 115.0, high: 130.0, low: 100.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-12")!, open: 110.0, close: 120.0, high: 125.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-13")!, open: 120.0, close: 127.0, high: 130.0, low: 115.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-14")!, open: 125.0, close: 135.0, high: 140.0, low: 120.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-15")!, open: 135.0, close: 138.0, high: 140.0, low: 125.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-16")!, open: 130.0, close: 115.0, high: 135.0, low: 110.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-17")!, open: 115.0, close: 128.0, high: 130.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-18")!, open: 125.0, close: 110.0, high: 130.0, low: 100.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-19")!, open: 110.0, close: 120.0, high: 125.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-20")!, open: 120.0, close: 126.0, high: 130.0, low: 115.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-21")!, open: 125.0, close: 138.0, high: 140.0, low: 120.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-22")!, open: 135.0, close: 130.0, high: 140.0, low: 125.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-23")!, open: 130.0, close: 115.0, high: 135.0, low: 110.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-24")!, open: 115.0, close: 125.0, high: 130.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-25")!, open: 125.0, close: 110.0, high: 130.0, low: 100.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-26")!, open: 110.0, close: 120.0, high: 125.0, low: 105.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-27")!, open: 120.0, close: 125.0, high: 130.0, low: 115.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-28")!, open: 120.0, close: 125.0, high: 130.0, low: 115.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-29")!, open: 125.0, close: 135.0, high: 140.0, low: 120.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-30")!, open: 135.0, close: 130.0, high: 140.0, low: 125.0),
            Candlestick(date: dateFormatter.date(from: "2023-01-31")!, open: 135.0, close: 130.0, high: 140.0, low: 125.0),
        ]
        
    }
    
}
