//
//  StepCountData.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import Foundation

struct StepCountData: Identifiable {
    
    let id: UUID = UUID()
    let date: Date
    let steps: Int
    
    
    static func getStepData() -> [StepCountData] {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        func getDate(dateString: String) -> Date {
            return dateFormatter.date(from: dateString) ?? Date.now
        }
        
        return [
            StepCountData(date: getDate(dateString: "2023-08-01"), steps: 7500),
            StepCountData(date: getDate(dateString: "2023-08-02"), steps: 8000),
            StepCountData(date: getDate(dateString: "2023-08-03"), steps: 8200),
            StepCountData(date: getDate(dateString: "2023-08-04"), steps: 7600),
            StepCountData(date: getDate(dateString: "2023-08-05"), steps: 8800),
            StepCountData(date: getDate(dateString: "2023-08-06"), steps: 9200),
            StepCountData(date: getDate(dateString: "2023-08-07"), steps: 9400),
            StepCountData(date: getDate(dateString: "2023-08-08"), steps: 8500),
            StepCountData(date: getDate(dateString: "2023-08-09"), steps: 9000),
            StepCountData(date: getDate(dateString: "2023-08-10"), steps: 8700),
            StepCountData(date: getDate(dateString: "2023-08-11"), steps: 9200),
            StepCountData(date: getDate(dateString: "2023-08-12"), steps: 9400),
            StepCountData(date: getDate(dateString: "2023-08-13"), steps: 8800),
            StepCountData(date: getDate(dateString: "2023-08-14"), steps: 8500),
            StepCountData(date: getDate(dateString: "2023-08-15"), steps: 9000),
            StepCountData(date: getDate(dateString: "2023-08-16"), steps: 8700),
            StepCountData(date: getDate(dateString: "2023-08-17"), steps: 9200),
            StepCountData(date: getDate(dateString: "2023-08-18"), steps: 9400),
            StepCountData(date: getDate(dateString: "2023-08-19"), steps: 8800),
            StepCountData(date: getDate(dateString: "2023-08-20"), steps: 8500),
        ]
    }
    
}

