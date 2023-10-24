//
//  MonthlyExpence.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import Foundation

struct MonthlyExpenses: Identifiable {
    
    let id: UUID = UUID()
    let month: String
    let expenseCategories: [ExpenseCategory]
    
    struct ExpenseCategory: Identifiable {
        
        let id: UUID = UUID()
        let category: String
        let amount: Double
    }
    
    static func expensess() -> [MonthlyExpenses] {
        [
            MonthlyExpenses(month: "January", expenseCategories: [
                ExpenseCategory(category: "Rent", amount: 500.0),
                ExpenseCategory(category: "Utilities", amount: 300.0),
                ExpenseCategory(category: "Groceries", amount: 400.0),
                ExpenseCategory(category: "Transportation", amount: 200.0),
            ]),
            MonthlyExpenses(month: "February", expenseCategories: [
                ExpenseCategory(category: "Rent", amount: 500.0),
                ExpenseCategory(category: "Utilities", amount: 320.0),
                ExpenseCategory(category: "Groceries", amount: 420.0),
                ExpenseCategory(category: "Transportation", amount: 210.0),
            ]),
            MonthlyExpenses(month: "March", expenseCategories: [
                ExpenseCategory(category: "Rent", amount: 500.0),
                ExpenseCategory(category: "Utilities", amount: 310.0),
                ExpenseCategory(category: "Groceries", amount: 430.0),
                ExpenseCategory(category: "Transportation", amount: 220.0),
            ]),
            MonthlyExpenses(month: "April", expenseCategories: [
                ExpenseCategory(category: "Rent", amount: 500.0),
                ExpenseCategory(category: "Utilities", amount: 300.0),
                ExpenseCategory(category: "Groceries", amount: 420.0),
                ExpenseCategory(category: "Transportation", amount: 210.0),
            ]),
        ]

    }
}

