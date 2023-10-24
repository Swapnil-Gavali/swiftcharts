//
//  ExpenseCategoryData.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct ExpenseCategoryData: Identifiable {
    let id: UUID = UUID()
    let category: String
    let amountSpent: Double
    
    static func expenseData() -> [ExpenseCategoryData] {
        return [
            ExpenseCategoryData(category: "Rent", amountSpent: 30.0),
            ExpenseCategoryData(category: "Groceries", amountSpent: 20.0),
            ExpenseCategoryData(category: "Utilities", amountSpent: 10.0),
            ExpenseCategoryData(category: "Transportation", amountSpent: 15.0),
            ExpenseCategoryData(category: "Entertainment", amountSpent: 5.0),
            ExpenseCategoryData(category: "Dining Out", amountSpent: 10.0),
            ExpenseCategoryData(category: "Miscellaneous", amountSpent: 10.0),
        ]
    }
}


