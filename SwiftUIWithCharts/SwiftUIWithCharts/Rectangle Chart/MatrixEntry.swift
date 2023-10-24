//
//  MatrixEntry.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct MatrixEntry: Identifiable {
    let id: UUID = UUID()
    var positive: String
    var negative: String
    var num: Double
    
    static func getMatrixEntry() -> [MatrixEntry] {
         [
            MatrixEntry(positive: "+", negative: "+", num: 125),
            MatrixEntry(positive: "+", negative: "-", num: 10),
            MatrixEntry(positive: "-", negative: "-", num: 80),
            MatrixEntry(positive: "-", negative: "+", num: 1)
        ]
    }
}
