//
//  SignupBioViewModel.swift
//  FoodNinja
//
//  Created by Imran on 24/01/24.
//

import Foundation

final class SignupBioViewModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var mobileNumber: String = ""
}
