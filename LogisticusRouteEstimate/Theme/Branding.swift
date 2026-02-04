import SwiftUI

enum Branding {
    static let primary = Color(red: 0.07, green: 0.14, blue: 0.26)
    static let secondary = Color(red: 0.25, green: 0.35, blue: 0.45)
    static let accent = Color(red: 0.0, green: 0.55, blue: 0.72)
    static let background = Color(red: 0.95, green: 0.96, blue: 0.98)
    static let card = Color.white

    static let cornerRadius: CGFloat = 16
    static let horizontalPadding: CGFloat = 20

    static func titleStyle(_ text: Text) -> some View {
        text
            .font(.title2.weight(.semibold))
            .foregroundColor(primary)
    }
}

extension View {
    func logisticusCard() -> some View {
        self
            .padding()
            .background(Branding.card)
            .cornerRadius(Branding.cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: Branding.cornerRadius)
                    .stroke(Branding.secondary.opacity(0.2), lineWidth: 1)
            )
    }
}
