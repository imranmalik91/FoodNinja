//
//  Image.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

enum ImageName: String {
    case splash, splashLogo, facebook, google, lock, message, profile
    case onboarding1 = "onboarding-1"
    case onboarding2 = "onboarding-2"
    
    case person = "person.fill"
    case eye = "eye"
    case eyeSlash = "eye.slash"
    case checkMarkFilled = "checkmark.circle.fill"
    case checkmark = "checkmark.circle"
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
    
    init(sysNameImage: ImageName) {
        self.init(systemName: sysNameImage.rawValue)
    }
}
