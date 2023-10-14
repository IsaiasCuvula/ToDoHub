//
//  LoginView.swift
//  ToDoHub
//
//  Created by Isaias Cuvula on 12.10.23.
//

import SwiftUI

struct LoginView: View {
    @Binding var isVisible: Bool
    
    var body: some View {
        VStack {
              Button("LoginView Dismiss") {
                isVisible = false
              }
              .frame(maxWidth: .infinity, maxHeight: .infinity)
              .background(.purple)
            }
        
    }
}

#Preview {
    LoginView(isVisible: .constant(true))
}
