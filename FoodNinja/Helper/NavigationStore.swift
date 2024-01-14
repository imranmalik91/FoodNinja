//
//  NavigationStore.swift
//  FoodNinja
//
//  Created by Imran on 14/01/24.
//

import SwiftUI

enum NavigationDestination: Hashable {
    case login, signup(String)
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .login:
            LoginView()
        case .signup(let name):
            SignupView(name: name)
        }
    }
}

final class NavigationStore: ObservableObject {
    @Published var path: [NavigationDestination] = []
    
    func push(to view: NavigationDestination) {
        path.append(view)
    }
}
