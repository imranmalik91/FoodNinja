//
//  SignupBioView.swift
//  FoodNinja
//
//  Created by Imran on 24/01/24.
//

import SwiftUI

struct SignupBioView: View {
    @StateObject private var viewModel = SignupBioViewModel()
    @EnvironmentObject private var navigationStore: NavigationStore
    
    var body: some View {
        GeometryReader { reader in
            ZStack {
                Image(name: .splash)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        Text("Fill in your bio to get \nstarted")
                            .font(.system(size: 25, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                        
                        Text("This data will be displayed in your account \nprofile for security")
                            .font(.system(size: 12, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        CustomTextField(placeholder: "First Name", text: $viewModel.firstName)
                        
                        CustomTextField(placeholder: "Last Name", text: $viewModel.lastName)
                        
                        CustomTextField(placeholder: "Mobile Number", text: $viewModel.mobileNumber)

                        Spacer()
                        
                        let config = CustomButtonConfig(title: "Next") {
                            
                        }
                        CustomButton(config: config)
                            .padding(.bottom)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: reader.size.height)
                }
                .padding(.horizontal)
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: backButton)
            }
        }
    }
    
    private var backButton: some View {
        Button(action: {
            navigationStore.popView()
        }, label: {
            Image(name: .backIcon)
        })
    }
}

#Preview {
    SignupBioView()
}
