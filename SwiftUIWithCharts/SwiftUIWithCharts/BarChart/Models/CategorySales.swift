//
//  CategorySales.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import Foundation
struct Sales: Identifiable {
    
    let id: UUID = UUID()
    let category: String
    let salesAmount: Double
    
    static func sales() -> [Sales] {
        [
            Sales(category: "Electronics", salesAmount: 15000.0),
            Sales(category: "Clothing", salesAmount: 17000.0),
            Sales(category: "Home Decor", salesAmount: 18000.0),
            Sales(category: "Toys", salesAmount: 16000.0),
            Sales(category: "Furniture", salesAmount: 19000.0),
            Sales(category: "Books", salesAmount: 20000.0),
            Sales(category: "Groceries", salesAmount: 21000.0),
            Sales(category: "Health & Beauty", salesAmount: 22000.0),
            Sales(category: "Sports", salesAmount: 20000.0),
            Sales(category: "Jewelry", salesAmount: 23000.0),
        ]
        
    }
}
