import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = EstimateViewModel()

    var body: some View {
        TabView {
            DashboardView(estimate: $viewModel.estimate)
                .tabItem {
                    Label("Dashboard", systemImage: "rectangle.grid.2x2")
                }

            RoutePlannerView(route: $viewModel.estimate.route)
                .tabItem {
                    Label("Route", systemImage: "map")
                }

            ClearanceCheckerView(clearanceChecks: $viewModel.estimate.clearanceChecks)
                .tabItem {
                    Label("Clearance", systemImage: "camera.viewfinder")
                }

            CostInputsView(costInputs: $viewModel.estimate.costInputs)
                .tabItem {
                    Label("Costs", systemImage: "dollarsign.circle")
                }

            SummaryView(estimate: $viewModel.estimate)
                .tabItem {
                    Label("Summary", systemImage: "doc.plaintext")
                }
        }
        .tint(Branding.accent)
        .background(Branding.background)
    }
}

#Preview {
    ContentView()
}
