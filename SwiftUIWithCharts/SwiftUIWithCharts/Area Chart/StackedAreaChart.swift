//
//  StackedAreaChart.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import SwiftUI
import Charts

struct StackedAreaChart: View {
    let data = MonthlyEnergyData.getEnergyData()
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Stasked Area chart")
            Chart {
                ForEach(data, id: \.id) { applienceEnergy in
                    ForEach(applienceEnergy.appliances, id: \.id) { appliances in
                        AreaMark(x: .value("Month", applienceEnergy.month), y: .value("Applience Energy Consumtion", appliances.energyConsumption))
                            .foregroundStyle(by: .value("Name", appliances.applianceName))
                          
                    }
                }
            }
        })
    }
}

#Preview {
    StackedAreaChart()
}
