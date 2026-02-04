import SwiftUI

struct ClearanceCheckerView: View {
    @Binding var clearanceChecks: [ClearanceCheck]

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 8) {
                    Branding.titleStyle(Text("Underpass Clearance"))
                    Text("Use the camera to estimate clearance height or enter posted heights manually. Capture photos for audit-ready records.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, Branding.horizontalPadding)

                List {
                    ForEach(clearanceChecks) { check in
                        VStack(alignment: .leading, spacing: 6) {
                            Text(check.locationName)
                                .font(.headline)
                            HStack {
                                Text("Measured: \(check.measuredHeightFeet, specifier: "%.1f") ft")
                                if let posted = check.postedHeightFeet {
                                    Text("Posted: \(posted, specifier: "%.1f") ft")
                                }
                            }
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            Text("Captured \(check.capturedAt.formatted(date: .abbreviated, time: .shortened))")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 6)
                    }
                }
            }
            .navigationTitle("Clearance")
        }
    }
}
