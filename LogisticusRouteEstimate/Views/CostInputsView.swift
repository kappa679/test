import SwiftUI

struct CostInputsView: View {
    @Binding var costInputs: CostInputs

    var body: some View {
        NavigationStack {
            Form {
                Section("Labor") {
                    LabeledContent("Hours", value: "\(costInputs.laborHours, specifier: "%.1f")")
                    LabeledContent("Rate", value: "$\(costInputs.laborRate, specifier: "%.2f")")
                }

                Section("Fuel") {
                    LabeledContent("Miles", value: "\(costInputs.fuelMiles, specifier: "%.0f")")
                    LabeledContent("MPG", value: "\(costInputs.fuelMpg, specifier: "%.1f")")
                    LabeledContent("$/Gallon", value: "$\(costInputs.fuelCostPerGallon, specifier: "%.2f")")
                }

                Section("Other") {
                    LabeledContent("Tolls", value: "$\(costInputs.tolls, specifier: "%.2f")")
                    LabeledContent("Equipment", value: "$\(costInputs.equipmentFees, specifier: "%.2f")")
                    LabeledContent("Overhead", value: "\(costInputs.overheadPercent, specifier: "%.0f")%")
                    LabeledContent("Margin", value: "\(costInputs.marginPercent, specifier: "%.0f")%")
                }
            }
            .navigationTitle("Cost Inputs")
        }
    }
}
