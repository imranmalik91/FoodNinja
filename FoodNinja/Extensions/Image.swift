//
//  Image.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

enum ImageName: String {
    case splash, splashLogo
}

extension Image {
    init(name: ImageName) {
        self.init(name.rawValue)
    }
}
