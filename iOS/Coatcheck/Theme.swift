import SwiftUI

// Unique palette for Coatcheck - Event Fee Log: velvet-rope purple & neon pink
enum Theme {
    static let primary = Color(hex: "#4A148C")
    static let accent = Color(hex: "#E91E63")
    static let background = Color(hex: "#1A0630")
    static let cardBackground = Color(hex: "#1A0630").opacity(0.6)
    static let textPrimary = Color.white
    static let textSecondary = Color.white.opacity(0.65)

    static let titleFont = Font.system(.title2, design: .rounded).weight(.bold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let numberFont = Font.system(.title3, design: .monospaced).weight(.semibold)
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255
        let g = Double((v >> 8) & 0xFF) / 255
        let b = Double(v & 0xFF) / 255
        self.init(red: r, green: g, blue: b)
    }
}
