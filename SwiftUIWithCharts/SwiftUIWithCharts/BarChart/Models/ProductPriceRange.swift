//
//  ProductPriceRange.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import Foundation

struct ProductPriceRange: Identifiable {
    
    let id: UUID = UUID()
    let category: String
    let minPrice: Double
    let maxPrice: Double
    
    static func productsPriceRange() -> [ProductPriceRange] {
        [
            ProductPriceRange(category: "Clothing", minPrice: 20.0, maxPrice: 200.0),
            ProductPriceRange(category: "Books", minPrice: 15.0, maxPrice: 400.0),
            ProductPriceRange(category: "Home Appliances", minPrice: 50.0, maxPrice: 500.0),
            ProductPriceRange(category: "Toys", minPrice: 100.0, maxPrice: 300.0),
            ProductPriceRange(category: "Gardening Tools", minPrice: 120.0, maxPrice: 700.0),
            ProductPriceRange(category: "Musical Instruments", minPrice: 50.0, maxPrice: 500.0),
            ProductPriceRange(category: "Art Supplies", minPrice: 50.0, maxPrice: 600.0),
            ProductPriceRange(category: "Fitness Equipment", minPrice: 100.0, maxPrice: 800.0)
        ]

    }
}

