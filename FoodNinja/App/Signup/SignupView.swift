//
//  SignupView.swift
//  FoodNinja
//
//  Created by Imran on 14/01/24.
//

import SwiftUI

struct SignupView: View {
    let name: String
    
    var body: some View {
        Text(name)
    }
}

#Preview {
    SignupView(name: "Test")
}
