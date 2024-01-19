//
//  SignupViewModel.swift
//  FoodNinja
//
//  Created by Imran on 19/01/24.
//

import Foundation

final class SignupViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    @Published var keepMeSignedIn = false
    @Published var emailPromotion = false
    
}
