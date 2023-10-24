//
//  CategoryWithProfitDataModel.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import Foundation
struct CategoryWithProfitDataModel {
    let chartTitle: String
    let dataPoints: [DataPoint]

    struct DataPoint: Identifiable {
        let id: UUID = UUID()
        let categoryName: String
        let maxProfit: Double
        let minProfit: Double
        
        var avarage: Double {
            return ((maxProfit - minProfit) / 2) + minProfit
        }
    }

    static func sampleData() -> CategoryWithProfitDataModel {
        let dataPoints: [DataPoint] = [
            DataPoint(categoryName: "Electronics", maxProfit: 6500, minProfit: 800),
            DataPoint(categoryName: "Clothing", maxProfit: 6000, minProfit: 1500),
            DataPoint(categoryName: "Home Appliances", maxProfit: 5200, minProfit: 1000),
            DataPoint(categoryName: "Toys", maxProfit: 6000, minProfit: 2000),
            DataPoint(categoryName: "Furniture", maxProfit: 7500, minProfit: 2800),
            DataPoint(categoryName: "Books", maxProfit: 8500, minProfit: 2500),
            DataPoint(categoryName: "Health & Beauty", maxProfit: 8000, minProfit: 3800),
            DataPoint(categoryName: "Automotive", maxProfit: 9200, minProfit: 1600),
            DataPoint(categoryName: "Human Resources", maxProfit: 7000, minProfit: 1200),
            DataPoint(categoryName: "Finance", maxProfit: 5500, minProfit: 1800),
            DataPoint(categoryName: "Sales", maxProfit: 6500, minProfit: 2800),
            DataPoint(categoryName: "Marketing", maxProfit: 8200, minProfit: 2400),
        ]

        return CategoryWithProfitDataModel(chartTitle: "Categories", dataPoints: dataPoints)
    }
}

