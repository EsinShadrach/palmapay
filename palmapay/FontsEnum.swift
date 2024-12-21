//
//  FontsEnum.swift
//  palmapay
//
//  Created by rafe on 9/11/24.
//

import SwiftUI

enum CustomFont: String {
    case regular = "NeueMontreal-Regular"
    case medium = "NeueMontreal-Medium"
    case light = "NeueMontreal-Light"
    case italic = "NeueMontreal-Italic"
    case bold = "NeueMontreal-Bold"
    case mediumItalic = "NeueMontreal-MediumItalic"
    case lightItalic = "NeueMontreal-LightItalic"
    case boldItalic = "NeueMontreal-BoldItalic"
    
    // Helper method to get the custom font
    func font(size: CGFloat) -> Font {
        return .custom(self.rawValue, size: size)
    }
}
