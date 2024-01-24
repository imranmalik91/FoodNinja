//
//  SignupPaymentView.swift
//  FoodNinja
//
//  Created by Imran on 24/01/24.
//

import SwiftUI

struct SignupPaymentView: View {
    @StateObject private var viewModel = SignupPaymentViewModel()
    @EnvironmentObject private var navigationStore: NavigationStore
    
    var body: some View {
        GeometryReader { reader in
            
            ZStack {
                Image(name: .splash)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        Text("Payment Method")
                            .font(.system(size: 25, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top)
                        
                        Text("This data will be displayed in your account \nprofile for security")
                            .font(.system(size: 12, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ForEach(viewModel.paymentMethods, id: \.id) { method in
                            HStack {
                                Image(name: method.logo)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 70)
                            .background(viewModel.selectedPaymentMethod == method ? .lightGreen : .bg)
                            .cornerRadius(22)
                            .padding(.top)
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    viewModel.selectedPaymentMethod = method
                                }
                            }
                        }
                        
                        Spacer()
                        
                        let config = CustomButtonConfig(title: "Next", action: {
                            
                        })
                        
                        CustomButton(config: config)
                            .padding(.bottom)
                            .frame(width: 150)
                    }
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
    SignupPaymentView()
}
