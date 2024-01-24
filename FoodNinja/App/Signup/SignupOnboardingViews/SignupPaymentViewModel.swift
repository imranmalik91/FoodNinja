//
//  SignupPaymentViewModel.swift
//  FoodNinja
//
//  Created by Imran on 24/01/24.
//

import Foundation

struct PaymentMethod: Equatable {
    let id: String = UUID().uuidString
    let name: String
    let logo: ImageName
}

final class SignupPaymentViewModel: ObservableObject {
    @Published var paymentMethods: [PaymentMethod] = [
        .init(name: "Paypal", logo: .paypal),
        .init(name: "Visa", logo: .visa),
        .init(name: "Payoneer", logo: .payoneer)
    ]
    
    @Published var selectedPaymentMethod: PaymentMethod?
    
}
