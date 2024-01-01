//
//  OnboardingView.swift
//  FoodNinja
//
//  Created by Imran on 27/12/23.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject private var viewModel = OnboardingViewModel()
    @EnvironmentObject private var appState: AppState
    @State private var selectedIndex = 0
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedIndex) {
                ForEach(0..<viewModel.onboardingPages.count) { index in
                    OnboardingContent(page: viewModel.onboardingPages[index])
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            if selectedIndex == (viewModel.onboardingPages.count - 1) {
                let config = CustomButtonConfig(title: "NEXT") {
                    appState.isOnboardingDone = true
                }
                
                CustomButton(config: config)
                    .frame(maxHeight: .infinity, alignment: .bottom)
                    .frame(width: 160)
                    .padding(.bottom)
            }
        }
    }
}

#Preview {
    OnboardingView()
}
