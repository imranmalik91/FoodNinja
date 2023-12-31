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
        ZStack {
            TabView {
                ForEach(0..<viewModel.onboardingPages.count) { index in
                    OnboardingContent(page: viewModel.onboardingPages[index])
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            let config = CustomButtonConfig(title: "NEXT") {
                print("Next is tapped...")
            }
            
            CustomButton(config: config)
                .frame(maxHeight: .infinity, alignment: .bottom)
                .frame(width: 160)
                .padding(.bottom)
        }
    }
}

#Preview {
    OnboardingView()
}
