import SwiftUI

struct RoutePlannerView: View {
    private let stops = [
        "Origin: Turbine Factory, IA",
        "Stop: Bridge inspection, IL",
        "Stop: Staging yard, IN",
        "Destination: Wind site, OH"
    ]

    var body: some View {
        List {
            Section("Stops") {
                ForEach(stops, id: \.self) { stop in
                    Text(stop)
                }
            }

            Section("Constraints") {
                Label("Oversize permit required", systemImage: "exclamationmark.triangle")
                Label("Max height: 15 ft", systemImage: "ruler")
                Label("Escort vehicles: 2", systemImage: "car.2")
            }
        }
        .navigationTitle("Route Planner")
    }
}

#Preview {
    NavigationStack {
        RoutePlannerView()
    }
}
