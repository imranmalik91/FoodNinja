//
//  SignupView.swift
//  FoodNinja
//
//  Created by Imran on 14/01/24.
//

import SwiftUI

struct SignupView: View {
    @ObservedObject private var viewModel = SignupViewModel()
    @EnvironmentObject private var navigationStore: NavigationStore
    
    var body: some View {
        ZStack {
            Image(name: .splash)
                .ignoresSafeArea()
            
            ScrollView {
                Image(name: .splashLogo)
                
                Text("Sign Up For Free")
                    .font(.system(size: 20, weight: .bold))
                    .padding(.top, 50)
                
                CustomTextField(placeholder: "Let's Build It", text: $viewModel.username, leftImage: .profile)
                
                CustomTextField(placeholder: "Email", text: $viewModel.email, leftImage: .message)
                
                CustomTextField(placeholder: "Password", text: $viewModel.password, leftImage: .lock, isPasswordField: true)
                
                Label("Keep Me Signed In", systemImage: viewModel.keepMeSignedIn ? ImageName.checkMarkFilled.rawValue : ImageName.checkmark.rawValue)
                    .contentTransition(.symbolEffect(.replace))
                    .foregroundColor(viewModel.keepMeSignedIn ? .darkGreen : .gray)
                    .padding(.top)
                    .onTapGesture {
                        viewModel.keepMeSignedIn.toggle()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Label("Email Me About Special Pricing", systemImage: viewModel.emailPromotion ? ImageName.checkMarkFilled.rawValue : ImageName.checkmark.rawValue)
                    .contentTransition(.symbolEffect(.replace))
                    .foregroundColor(viewModel.emailPromotion ? .darkGreen : .gray)
                    .onTapGesture {
                        viewModel.emailPromotion.toggle()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                let config = CustomButtonConfig(title: "Create Account") {
                    navigationStore.push(to: .signupBioView)
                }
                
                CustomButton(config: config)
                    .frame(width: 150)
                    .padding(.top, 40)
                
                Button(action: {
                    navigationStore.popToRoot()
                }, label: {
                    Text("already have an account?")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(.lightGreen)
                })
                .padding(.top)
                .padding(.bottom, 40)
                
            }
            .padding(.horizontal)
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    SignupView()
}
