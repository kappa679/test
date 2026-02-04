import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            EstimateListView()
                .tabItem {
                    Label("Estimates", systemImage: "doc.plaintext")
                }

            ClearanceCheckerView()
                .tabItem {
                    Label("Clearance", systemImage: "camera")
                }
        }
    }
}

#Preview {
    RootView()
}
