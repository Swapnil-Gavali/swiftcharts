//
//  MonthlySalesModel.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 24/10/23.
//

import Foundation
struct MonthlySales: Identifiable {
    
    let id: UUID = UUID()
    let month: String
    let products: [Product]
    
    struct Product: Identifiable {
        let id: UUID = UUID()
        let productName: String
        let unitsSold: Int
        let revenue: Double
    }
    
    static func salesData() -> [MonthlySales] {
        [
            MonthlySales(month: "January", products: [
                Product(productName: "Product A", unitsSold: 100, revenue: 4000.0),
                Product(productName: "Product B", unitsSold: 150, revenue: 3500.0)
            ]),
            MonthlySales(month: "February", products: [
                Product(productName: "Product A", unitsSold: 120, revenue: 4300.0),
                Product(productName: "Product B", unitsSold: 140, revenue: 3200.0)
            ]),
            MonthlySales(month: "March", products: [
                Product(productName: "Product A", unitsSold: 110, revenue: 3500.0),
                Product(productName: "Product B", unitsSold: 130, revenue: 4200.0)
            ]),
            MonthlySales(month: "April", products: [
                Product(productName: "Product A", unitsSold: 105, revenue: 4250.0),
                Product(productName: "Product B", unitsSold: 125, revenue: 3750.0)
            ]),
            MonthlySales(month: "May", products: [
                Product(productName: "Product A", unitsSold: 115, revenue: 4350.0),
                Product(productName: "Product B", unitsSold: 135, revenue: 3850.0)
            ]),
            MonthlySales(month: "June", products: [
                Product(productName: "Product A", unitsSold: 125, revenue: 3450.0),
                Product(productName: "Product B", unitsSold: 145, revenue: 4250.0)
            ]),
            MonthlySales(month: "July", products: [
                Product(productName: "Product A", unitsSold: 135, revenue: 4450.0),
                Product(productName: "Product B", unitsSold: 155, revenue: 3550.0)
            ]),
            MonthlySales(month: "August", products: [
                Product(productName: "Product A", unitsSold: 145, revenue: 2250.0),
                Product(productName: "Product B", unitsSold: 165, revenue: 3650.0)
            ]),
            MonthlySales(month: "September", products: [
                Product(productName: "Product A", unitsSold: 155, revenue: 4750.0),
                Product(productName: "Product B", unitsSold: 175, revenue: 3750.0)
            ]),
            MonthlySales(month: "October", products: [
                Product(productName: "Product A", unitsSold: 165, revenue: 2250.0),
                Product(productName: "Product B", unitsSold: 185, revenue: 3850.0)
            ]),
            MonthlySales(month: "November", products: [
                Product(productName: "Product A", unitsSold: 175, revenue: 4750.0),
                Product(productName: "Product B", unitsSold: 195, revenue: 3950.0)
            ]),
            MonthlySales(month: "December", products: [
                Product(productName: "Product A", unitsSold: 185, revenue: 3250.0),
                Product(productName: "Product B", unitsSold: 205, revenue: 4050.0)
            ])
        ]
    }
}
