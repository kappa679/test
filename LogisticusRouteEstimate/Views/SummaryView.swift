import SwiftUI

struct SummaryView: View {
    @Binding var estimate: Estimate

    private var totalCost: Double {
        let labor = estimate.costInputs.laborHours * estimate.costInputs.laborRate
        let fuel = (estimate.costInputs.fuelMiles / estimate.costInputs.fuelMpg) * estimate.costInputs.fuelCostPerGallon
        let base = labor + fuel + estimate.costInputs.tolls + estimate.costInputs.equipmentFees
        let overhead = base * (estimate.costInputs.overheadPercent / 100)
        let margin = (base + overhead) * (estimate.costInputs.marginPercent / 100)
        return base + overhead + margin
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Branding.titleStyle(Text("Estimate Summary"))

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Total Cost")
                            .font(.caption.weight(.semibold))
                            .foregroundColor(Branding.secondary)
                        Text("$\(totalCost, specifier: "%.2f")")
                            .font(.largeTitle.weight(.bold))
                    }
                    .logisticusCard()

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Assumptions")
                            .font(.headline)
                        Text("• Renewable energy equipment: \(estimate.constraints.renewableEnergyEquipment.joined(separator: ", "))")
                        Text("• Clearance checks recorded: \(estimate.clearanceChecks.count)")
                        Text("• Vehicle: \(estimate.constraints.vehicleType)")
                    }
                    .logisticusCard()

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Next steps")
                            .font(.headline)
                        Text("Submit for approval when route and clearance checks are finalized.")
                            .foregroundColor(.secondary)
                    }
                    .logisticusCard()
                }
                .padding(.horizontal, Branding.horizontalPadding)
                .padding(.vertical, 16)
            }
            .navigationTitle("Summary")
        }
    }
}
