import SwiftUI

struct EstimateListView: View {
    private let estimates = [
        "Wind Farm Blade Haul - Draft",
        "Solar Array Delivery - Submitted",
        "Transformer Move - Approved"
    ]

    var body: some View {
        NavigationStack {
            List(estimates, id: \.self) { estimate in
                NavigationLink(estimate, destination: EstimateDetailView())
            }
            .navigationTitle("Estimates")
        }
    }
}

#Preview {
    EstimateListView()
}
