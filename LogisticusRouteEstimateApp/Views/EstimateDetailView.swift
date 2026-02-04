import SwiftUI

struct EstimateDetailView: View {
    @State private var customerName = ""
    @State private var jobReference = ""
    @State private var estimateType: EstimateType = .oneTime
    @State private var notes = ""

    var body: some View {
        Form {
            Section("Job Details") {
                TextField("Customer name", text: $customerName)
                TextField("Job reference / PO", text: $jobReference)
                Picker("Estimate type", selection: $estimateType) {
                    ForEach(EstimateType.allCases) { type in
                        Text(type.rawValue).tag(type)
                    }
                }
            }

            Section("Renewable Energy Cargo") {
                Text("Cargo type: Wind turbine blade")
                Text("Length: 75m · Weight: 18t")
                Text("Special handling: Escort required")
            }

            Section("Notes") {
                TextEditor(text: $notes)
                    .frame(minHeight: 120)
            }

            Section {
                NavigationLink("Route Planner", destination: RoutePlannerView())
                NavigationLink("Cost Inputs", destination: CostInputsView())
                NavigationLink("Clearance Checker", destination: ClearanceCheckerView())
            }
        }
        .navigationTitle("Estimate")
    }
}

#Preview {
    NavigationStack {
        EstimateDetailView()
    }
}
