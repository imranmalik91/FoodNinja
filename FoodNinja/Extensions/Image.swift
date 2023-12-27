//
//  Image.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

enum ImageName: String {
    case splash, splashLogo
    case onboarding1 = "onboarding-1"
    case onboarding2 = "onboarding-2"
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
}
