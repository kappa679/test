import SwiftUI

struct ClearanceCheckerView: View {
    @State private var measuredHeight = 14.5
    @State private var manualOverride = ""
    @State private var notes = ""

    var body: some View {
        Form {
            Section("Camera Measurement") {
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 180)
                    VStack(spacing: 8) {
                        Image(systemName: "camera.viewfinder")
                            .font(.system(size: 42))
                        Text("AR Overlay Preview")
                            .font(.headline)
                        Text("Simulated clearance: \(measuredHeight, specifier: "%.1f") ft")
                            .font(.subheadline)
                    }
                }
                Button("Capture Measurement") {}
            }

            Section("Manual Override") {
                TextField("Posted height (ft)", text: $manualOverride)
                    .keyboardType(.decimalPad)
                Text("If posted signage differs, enter it here.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }

            Section("Notes") {
                TextEditor(text: $notes)
                    .frame(minHeight: 100)
            }

            Section {
                Button("Save Clearance Check") {}
            }
        }
        .navigationTitle("Clearance Checker")
    }
}

#Preview {
    NavigationStack {
        ClearanceCheckerView()
    }
}
