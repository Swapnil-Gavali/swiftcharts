//
//  Pizza.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct Pizza: Identifiable {
    
    let id: UUID = UUID()
    let date: Date
    let totalSales: Double
    
    
    
    static func sales() -> [Pizza] {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        
        func getDate(year: Int) -> Date {
            return dateFormatter.date(from: "\(year)") ?? Date.now
        }
        
        return [
            Pizza(date: getDate(year: 1980), totalSales: 100.0),
            Pizza(date: getDate(year: 1981), totalSales: 200.0),
            Pizza(date: getDate(year: 1982), totalSales: 300.0),
            Pizza(date: getDate(year: 1983), totalSales: 450.0),
            Pizza(date: getDate(year: 1984), totalSales: 500.0),
            Pizza(date: getDate(year: 1985), totalSales: 650.0),
            Pizza(date: getDate(year: 1986), totalSales: 700.0),
            Pizza(date: getDate(year: 1987), totalSales: 850.0),
            Pizza(date: getDate(year: 1988), totalSales: 900.0),
            Pizza(date: getDate(year: 1989), totalSales: 1050.0),
            Pizza(date: getDate(year: 1990), totalSales: 1100.0),
            Pizza(date: getDate(year: 1991), totalSales: 1300.0),
            Pizza(date: getDate(year: 1992), totalSales: 1400.0),
            Pizza(date: getDate(year: 1993), totalSales: 1500.0),
            Pizza(date: getDate(year: 1994), totalSales: 1605.0),
            Pizza(date: getDate(year: 1995), totalSales: 1608.0),
            Pizza(date: getDate(year: 1996), totalSales: 1609.0),
            Pizza(date: getDate(year: 1997), totalSales: 1610.0),
            Pizza(date: getDate(year: 1998), totalSales: 1650.0),
            Pizza(date: getDate(year: 1999), totalSales: 1680.0),
        ]
    }
}

