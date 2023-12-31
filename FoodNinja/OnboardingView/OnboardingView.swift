//
//  OnboardingView.swift
//  FoodNinja
//
//  Created by Imran on 27/12/23.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        TabView {
            ForEach(0..<viewModel.onboardingPages.count) { index in
                OnboardingContent(page: viewModel.onboardingPages[index])
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

#Preview {
    OnboardingView()
}
