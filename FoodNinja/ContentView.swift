//
//  ContentView.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var endSplash = true
    
    var body: some View {
        NavigationView {
            if endSplash {
                SplashView()
            } else {
                Text("Onboarding...")
            }
        }
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                endSplash = false
            }
        })
    }
}

#Preview {
    ContentView()
}
