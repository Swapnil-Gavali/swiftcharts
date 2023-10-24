//
//  Product.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import Foundation

struct Product: Identifiable {
    
    let id: UUID = UUID()
    let productName: String
    let salesAmount: Double
    
    static func productsSales() -> [Product] {
        [
            Product(productName: "Product A", salesAmount: 50000.0),
            Product(productName: "Product B", salesAmount: 75000.0),
            Product(productName: "Product C", salesAmount: 60000.0),
            Product(productName: "Product D", salesAmount: 90000.0),
            Product(productName: "Product E", salesAmount: 80000.0),
        ]
    }
}
