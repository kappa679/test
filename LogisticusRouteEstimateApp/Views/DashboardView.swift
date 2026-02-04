import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Quick Actions") {
                    NavigationLink("New Estimate", destination: EstimateDetailView())
                    NavigationLink("Resume Draft", destination: EstimateDetailView())
                }

                Section("Renewable Energy Focus") {
                    Label("Wind turbine transport", systemImage: "wind")
                    Label("Solar farm equipment", systemImage: "sun.max")
                    Label("Grid transformer delivery", systemImage: "bolt")
                }
            }
            .navigationTitle("Logisticus")
        }
    }
}

#Preview {
    DashboardView()
}
