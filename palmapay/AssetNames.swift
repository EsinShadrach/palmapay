//
//  AssetNames.swift
//  palmapay
//
//  Created by rafe on 9/11/24.
//

import SwiftUI

enum AssetName: String {
    case onboardAsset
    case icon
    case collectingHands

    var image: Image {
        Image(self.rawValue)
    }
}
