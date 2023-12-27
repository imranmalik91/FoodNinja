//
//  SplashView.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Image(name: .splash)
                .resizable()
                .ignoresSafeArea()
            
            Image(name: .splashLogo)
        }
    }
}

#Preview {
    SplashView()
}
