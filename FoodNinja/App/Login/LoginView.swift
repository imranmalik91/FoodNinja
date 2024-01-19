//
//  LoginView.swift
//  FoodNinja
//
//  Created by Imran on 01/01/24.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var navigationStore: NavigationStore
    @ObservedObject private var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            Image(name: .splash)
                .ignoresSafeArea()
            
            ScrollView {
                Image(name: .splashLogo)
                    .padding(.top)
                
                Text("Login To Your Account")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top, 50)
                                
                CustomTextField(placeholder: "Email", text: $viewModel.email)
                    .padding(.top, 40)
                
                CustomTextField(placeholder: "Password", text: $viewModel.password, isPasswordField: true)
                    .padding(.top)
                
                
                Text("Or Continue With")
                    .font(.system(size: 12, weight: .bold))
                    .padding(.top)
                
                HStack {
                    Image(name: .facebook)
                        .resizable()
                        .scaledToFit()
                    
                    Image(name: .google)
                        .resizable()
                        .scaledToFit()
                }
                
                Button {
                    print("Forgot password is tapped.")
                } label: {
                    Text("Forgot Your Password?")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.lightGreen)
                }
                
                
                let config = CustomButtonConfig(title: "Login") {
                    
                }
                
                CustomButton(config: config)
                    .frame(width: 140)
                    .padding(.top)
                
                Button {
                    navigationStore.push(to: .signup)
                } label: {
                    Text("Don't have an account, Signup here")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.lightGreen)
                }
                .padding(.top)
                .padding(.bottom, 40)
        
            }
            .padding(.horizontal)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    LoginView()
}
