import SwiftUI

struct DashboardView: View {
    @Binding var estimate: Estimate

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Branding.titleStyle(Text("Logisticus Route Estimate"))

                    HStack(spacing: 12) {
                        StatusBadge(status: estimate.status)
                        Text("Renewable energy haul")
                            .font(.subheadline.weight(.medium))
                            .foregroundColor(Branding.secondary)
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Customer")
                            .font(.caption.weight(.semibold))
                            .foregroundColor(Branding.secondary)
                        Text(estimate.customerName)
                            .font(.headline)
                    }
                    .logisticusCard()

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Job Reference")
                            .font(.caption.weight(.semibold))
                            .foregroundColor(Branding.secondary)
                        Text(estimate.jobReference)
                            .font(.headline)
                        Text("Created \(estimate.createdAt.formatted(date: .abbreviated, time: .shortened))")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .logisticusCard()

                    VStack(alignment: .leading, spacing: 8) {
                        Text("Equipment")
                            .font(.caption.weight(.semibold))
                            .foregroundColor(Branding.secondary)
                        ForEach(estimate.constraints.renewableEnergyEquipment, id: \.self) { item in
                            Text("• \(item)")
                                .font(.subheadline)
                        }
                    }
                    .logisticusCard()
                }
                .padding(.horizontal, Branding.horizontalPadding)
                .padding(.vertical, 16)
            }
            .navigationTitle("Dashboard")
        }
    }
}

struct StatusBadge: View {
    let status: EstimateStatus

    var body: some View {
        Text(status.rawValue.uppercased())
            .font(.caption.weight(.bold))
            .padding(.horizontal, 10)
            .padding(.vertical, 6)
            .background(Branding.accent.opacity(0.15))
            .foregroundColor(Branding.accent)
            .cornerRadius(12)
    }
}
