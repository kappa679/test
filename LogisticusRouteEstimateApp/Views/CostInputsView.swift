import SwiftUI

struct CostInputsView: View {
    @State private var laborHours = 12.0
    @State private var laborRate = 65.0
    @State private var fuelMiles = 420.0
    @State private var fuelMpg = 6.0
    @State private var fuelPrice = 4.25
    @State private var tolls = 180.0
    @State private var equipment = 450.0
    @State private var overhead = 250.0

    private var totalFuelCost: Double {
        (fuelMiles / fuelMpg) * fuelPrice
    }

    private var totalLaborCost: Double {
        laborHours * laborRate
    }

    private var totalCost: Double {
        totalLaborCost + totalFuelCost + tolls + equipment + overhead
    }

    var body: some View {
        Form {
            Section("Labor") {
                Stepper("Hours: \(laborHours, specifier: "%.1f")", value: $laborHours, in: 0...100, step: 0.5)
                Stepper("Rate: $\(laborRate, specifier: "%.0f")", value: $laborRate, in: 0...200, step: 5)
            }

            Section("Fuel") {
                Stepper("Miles: \(fuelMiles, specifier: "%.0f")", value: $fuelMiles, in: 0...2000, step: 10)
                Stepper("MPG: \(fuelMpg, specifier: "%.1f")", value: $fuelMpg, in: 1...12, step: 0.5)
                Stepper("Price/gal: $\(fuelPrice, specifier: "%.2f")", value: $fuelPrice, in: 0...10, step: 0.25)
                Text("Fuel cost: $\(totalFuelCost, specifier: "%.2f")")
            }

            Section("Other Costs") {
                Stepper("Tolls: $\(tolls, specifier: "%.0f")", value: $tolls, in: 0...5000, step: 10)
                Stepper("Equipment: $\(equipment, specifier: "%.0f")", value: $equipment, in: 0...10000, step: 25)
                Stepper("Overhead: $\(overhead, specifier: "%.0f")", value: $overhead, in: 0...10000, step: 25)
            }

            Section("Summary") {
                Text("Labor cost: $\(totalLaborCost, specifier: "%.2f")")
                Text("Total estimate: $\(totalCost, specifier: "%.2f")")
            }
        }
        .navigationTitle("Cost Inputs")
    }
}

#Preview {
    NavigationStack {
        CostInputsView()
    }
}
