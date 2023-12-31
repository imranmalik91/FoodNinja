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
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Image(name: page.imageName)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 45 : 0)
                .animation(
                    .easeInOut(duration: 5)
                    .repeatForever(autoreverses: true),
                    value: isAnimating)
                .opacity(isAnimating ? 1 : 0)
            
            Text(page.title)
                .font(.system(size: 24, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)
                .opacity(isAnimating ? 1 : 0)
            
            Text(page.description)
                .font(.system(size: 12))
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)
                .opacity(isAnimating ? 1 : 0)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .onAppear(perform: {
            withAnimation(.linear(duration: 1)) {
                isAnimating = true
            }
        })
    }
}

#Preview {
    OnboardingContent(page: OnboardingPage(imageName: .onboarding1, title: "Find your  Comfort Food here", description: "Here You Can find a chef or dish for every taste and color. Enjoy!"))
}
