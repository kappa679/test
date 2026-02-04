import SwiftUI

struct RoutePlannerView: View {
    @Binding var route: RoutePlan

    var body: some View {
        NavigationStack {
            List {
                Section("Route Overview") {
                    RouteRow(title: "Origin", value: route.origin)
                    RouteRow(title: "Destination", value: route.destination)
                    RouteRow(title: "Total Distance", value: "\(route.totalDistanceMiles, specifier: "%.0f") mi")
                }

                Section("Stops") {
                    ForEach(route.stops) { stop in
                        VStack(alignment: .leading, spacing: 6) {
                            Text(stop.address)
                                .font(.headline)
                            Text("Contact: \(stop.contact)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            Text("Service: \(stop.serviceMinutes) min · Window: \(stop.timeWindow)")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Route Planner")
        }
    }
}

struct RouteRow: View {
    let title: String
    let value: String

    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.secondary)
            Spacer()
            Text(value)
                .font(.subheadline.weight(.medium))
        }
    }
}
