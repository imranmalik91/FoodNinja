//
//  LoginViewModel.swift
//  FoodNinja
//
//  Created by Imran on 01/01/24.
//

import Foundation

final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
}
