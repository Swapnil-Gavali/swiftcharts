//
//  MonthlyEnergyData.swift
//  SwiftUIWithCharts
//
//  Created by Swapnil Gavali on 02/10/23.
//

import Foundation
struct MonthlyEnergyData: Identifiable {
    
    let id: UUID = UUID()
    let month: String
    let appliances: [ApplianceConsumption]
    
    struct ApplianceConsumption: Identifiable {
        let id: UUID = UUID()
        let applianceName: String
        let energyConsumption: Double
    }
    
    static func getEnergyData() -> [MonthlyEnergyData] {
        [
            MonthlyEnergyData(month: "Jan", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 300.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 150.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 100.0),
            ]),
            MonthlyEnergyData(month: "Feb", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 280.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 140.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 95.0),
            ]),
            MonthlyEnergyData(month: "Mar", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 270.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 130.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 90.0),
            ]),
            MonthlyEnergyData(month: "Apr", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 250.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 120.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 85.0),
            ]),
            MonthlyEnergyData(month: "May", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 230.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 110.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 80.0),
            ]),
            MonthlyEnergyData(month: "Jun", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 220.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 105.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 75.0),
            ]),
            MonthlyEnergyData(month: "Jul", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 210.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 100.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 70.0),
            ]),
            MonthlyEnergyData(month: "Aug", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 200.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 95.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 65.0),
            ]),
            MonthlyEnergyData(month: "Sep", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 190.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 90.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 60.0),
            ]),
            MonthlyEnergyData(month: "Oct", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 180.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 85.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 55.0),
            ]),
            MonthlyEnergyData(month: "Nov", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 170.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 80.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 50.0),
            ]),
            MonthlyEnergyData(month: "Dec", appliances: [
                ApplianceConsumption(applianceName: "Heating", energyConsumption: 160.0),
                ApplianceConsumption(applianceName: "Lighting", energyConsumption: 75.0),
                ApplianceConsumption(applianceName: "Refrigeration", energyConsumption: 45.0),
            ]),
        ]

    }
}
