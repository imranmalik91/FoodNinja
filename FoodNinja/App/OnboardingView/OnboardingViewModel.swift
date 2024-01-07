//
//  OnboardingViewModel.swift
//  FoodNinja
//
//  Created by Imran on 27/12/23.
//

import Foundation

final class OnboardingViewModel: ObservableObject {
    @Published var onboardingPages: [OnboardingPage]
    
    init() {
        onboardingPages = [
            OnboardingPage(imageName: .onboarding1, title: "Find your  Comfort Food here", description: "Here You Can find a chef or dish for every taste and color. Enjoy!"),
            OnboardingPage(imageName: .onboarding2, title: "Food Ninja is Where Your Comfort Food Lives", description: "Enjoy a fast and smooth food delivery at your doorstep")
        ]
    }
}
