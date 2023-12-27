//
//  OnboardingContent.swift
//  FoodNinja
//
//  Created by Imran on 27/12/23.
//

import SwiftUI

struct OnboardingPage {
    let imageName: ImageName
    let title: String
    let description: String
}

struct OnboardingContent: View {
    let page: OnboardingPage
    
    var body: some View {
        VStack {
            Image(name: page.imageName)
                .resizable()
                .scaledToFit()
            
            Text(page.title)
                .font(.system(size: 24, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)
            
            Text(page.description)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    OnboardingContent(page: OnboardingPage(imageName: .onboarding1, title: "Find your  Comfort Food here", description: "Here You Can find a chef or dish for every taste and color. Enjoy!"))
}
