//
//  ContentView.swift
//  FoodNinja
//
//  Created by Imran on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var endSplash = true
    @ObservedObject private var appState = AppState()
    @StateObject private var navigationStore = NavigationStore()
    
    var body: some View {
        NavigationView {
            if endSplash {
                SplashView()
            } else if appState.isOnboardingDone {
                NavigationStack(path: $navigationStore.path) {
                    LoginView()
                        .environmentObject(navigationStore)
                        .navigationDestination(for: NavigationDestination.self) { path in
                            path.view
                                .environmentObject(navigationStore)
                        }
                }
            } else {
                OnboardingView()
                    .environmentObject(appState)
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
