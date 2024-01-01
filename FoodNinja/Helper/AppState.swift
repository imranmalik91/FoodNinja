//
//  AppState.swift
//  FoodNinja
//
//  Created by Imran on 01/01/24.
//

import SwiftUI

enum AppStorageKey: String {
    case isOnboardingDone
}

final class AppState: ObservableObject {
    @AppStorage(AppStorageKey.isOnboardingDone.rawValue) var isOnboardingDone: Bool = false
}
