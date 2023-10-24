//
//  MonthlyFinanceDataModel.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 03/10/23.
//

import Foundation
struct MonthlyFinanceDataModel {
    let chartTitle: String
    let categories: [Category]

    struct Category: Identifiable {
        let id: UUID = UUID()
        let categoryName: String
        let dataPoints: [MonthlyData]

        struct MonthlyData: Identifiable {
            let id: UUID = UUID()
            let month: String
            let amount: Double
        }
    }

    static func sampleData() -> MonthlyFinanceDataModel {
        return MonthlyFinanceDataModel(chartTitle: "Grouped Bar Chart - Monthly Income and Expenses",
                                        categories: [
            Category(categoryName: "Income", dataPoints: [
                Category.MonthlyData(month: "Jan", amount: 50.0),
                Category.MonthlyData(month: "Feb", amount: 100.0),
                Category.MonthlyData(month: "Mar", amount: 200.0),
                Category.MonthlyData(month: "Apr", amount: 500.0),
                Category.MonthlyData(month: "May", amount: 800.0),
                Category.MonthlyData(month: "Jun", amount: 1200.0),
                Category.MonthlyData(month: "Jul", amount: 2000.0),
                Category.MonthlyData(month: "Aug", amount: 3000.0),
                Category.MonthlyData(month: "Sept", amount: 3500.0),
                Category.MonthlyData(month: "Oct", amount: 4800.0),
                Category.MonthlyData(month: "Nov", amount: 5800.0),
                Category.MonthlyData(month: "Dec", amount: 7000.0),
            ]),
            Category(categoryName: "Expenses", dataPoints: [
                Category.MonthlyData(month: "Jan", amount: 40.0),
                Category.MonthlyData(month: "Feb", amount: 80.0),
                Category.MonthlyData(month: "Mar", amount: 150.0),
                Category.MonthlyData(month: "Apr", amount: 400.0),
                Category.MonthlyData(month: "May", amount: 700.0),
                Category.MonthlyData(month: "Jun", amount: 1100.0),
                Category.MonthlyData(month: "Jul", amount: 1800.0),
                Category.MonthlyData(month: "Aug", amount: 2800.0),
                Category.MonthlyData(month: "Sept", amount: 3400.0),
                Category.MonthlyData(month: "Oct", amount: 4500.0),
                Category.MonthlyData(month: "Nov", amount: 5700.0),
                Category.MonthlyData(month: "Dec", amount: 6900.0),
            ]),
        ])
    }
}
