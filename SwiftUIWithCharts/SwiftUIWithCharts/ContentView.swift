//
//  ContentView.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 01/10/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            LazyVStack {
                BarChartView()
                    .frame(height: 600)
                StackedBarChartView()
                    .frame(height: 600)
                GroupedBarChart()
                    .frame(height: 800)
                GroupBarChart()
                    .frame(height: 600)
                OneDBarChart()
                    .frame(height: 600)
                IntervalBarChart()
                    .frame(height: 600)
                
                LineChart()
                    .frame(height: 600)
                GroupLineChart()
                    .frame(height: 600)
                StepChart()
                    .frame(height: 600)
                
                PointChart()
                    .frame(height: 500)
                
                RectangleChart()
                    .frame(height: 700)
                
                AreaChart()
                    .frame(height: 300)
                StackedAreaChart()
                    .frame(height: 300)
                RangeArea()
                    .frame(height: 300)
                
                PieChart()
                    .frame(height: 500)
                DonutChart()
                    .frame(height: 500)
                
                BarChartWithPointChart()
                    .frame(height: 500)
                BarChartWithRectangleChart()
                    .frame(height: 500)
                AreaChartWithLineChart()
                    .frame(height: 500)
                LineChartWithPointChart()
                    .frame(height: 500)
                LineChartWithGradient()
                    .frame(height: 500)
                CandlestickView()
                    .frame(height: 500)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
