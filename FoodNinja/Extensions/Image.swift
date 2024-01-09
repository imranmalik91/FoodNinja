//
//  Image.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

enum ImageName: String {
    case splash, splashLogo, facebook, google
    case onboarding1 = "onboarding-1"
    case onboarding2 = "onboarding-2"
    
    case person = "person.fill"
    case eye = "eye"
    case eyeSlash = "eye.slash"
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
    
    init(sysNameImage: ImageName) {
        self.init(systemName: sysNameImage.rawValue)
    }
}
