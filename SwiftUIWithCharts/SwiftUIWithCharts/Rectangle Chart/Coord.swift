//
//  Coord.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct Coord: Identifiable {
    
    let id: UUID = UUID()
    var xStart: Double
    var xEnd: Double
    var yStart: Double
    var yEnd: Double
    
    static func getCoords() -> [Coord] {
        [
            Coord(xStart: 1, xEnd: 2, yStart: 1.5, yEnd: 2.5),
            Coord(xStart: 2.2, xEnd: 2.6, yStart: 2.5, yEnd: 3.1),
            Coord(xStart: 2.8, xEnd: 3.3, yStart: 4.3, yEnd: 5.4),
            Coord(xStart: 3.5, xEnd: 4, yStart: 2.5, yEnd: 2.5),
            Coord(xStart: 4.2, xEnd: 4.6, yStart: 2.5, yEnd: 3.1),
            Coord(xStart: 5.2, xEnd: 5.3, yStart: 4.3, yEnd: 6.4),
            Coord(xStart: 6, xEnd: 6.5, yStart: 1.5, yEnd: 2.5),
            Coord(xStart: 6.8, xEnd: 7, yStart: 2.5, yEnd: 3.1),
            Coord(xStart: 7.2, xEnd: 8.3, yStart: 4.3, yEnd: 5.4),
            Coord(xStart: 8.5, xEnd: 8.9, yStart: 1.5, yEnd: 2.5),
            Coord(xStart: 9.2, xEnd: 9.6, yStart: 1.5, yEnd: 3.1),
            Coord(xStart: 10.2, xEnd: 11.3, yStart: 2.3, yEnd: 5.4),
            Coord(xStart: 12.5, xEnd: 12.7, yStart: 0.5, yEnd: 2.5),
            Coord(xStart: 13.2, xEnd: 14.6, yStart: 2.5, yEnd: 3.1),
            Coord(xStart: 15.2, xEnd: 16.3, yStart: 3.3, yEnd: 5.4),
            Coord(xStart: 17.5, xEnd: 17.5, yStart: 0.5, yEnd: 2.5),
            Coord(xStart: 17.9, xEnd: 18, yStart: 2.5, yEnd: 4.1),
            Coord(xStart: 18.2, xEnd: 18.3, yStart: 4.3, yEnd: 4.4)
        ]
    }
}




