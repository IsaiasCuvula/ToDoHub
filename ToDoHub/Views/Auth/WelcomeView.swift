//
//  WelcomeView.swift
//  ToDoHub
//
//  Created by Isaias Cuvula on 12.10.23.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showLoginView = false
    @State private var showSignUpView = false
    
    var body: some View {
      
            VStack{
                Image("TakeNotes")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .foregroundStyle(Color.appSecondary)
                    .padding()
                
                
                Text("ToDoHub.")
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(Color.appPrimary)
                    .padding(.bottom)
                
                
                
                Text("Plan what you will do to be more organized for today, tomorrow and beyond")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.appOnPrimary)
                    .padding(.bottom, 50)
                    .lineLimit(2)
                
                
                
                Button {
                    showLoginView = true
                } label: {
                    Text("Login")
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.appPrimary)
                        .clipShape(.buttonBorder)
                    
                }
                
                
                Button {
                    withAnimation {
                        showSignUpView = true
                    }
                  
                } label: {
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.appPrimary)
                        .font(.title2)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.white)
                        .clipShape(.buttonBorder)
                    
                    
                }
                
                
            }.padding(30)
            
            .fullScreenCover(isPresented: $showLoginView, content: {
                LoginView(isVisible: $showLoginView)
            })
            .fullScreenCover(isPresented: $showSignUpView, content: {
                SignUpView()
            })
            .transaction { transaction in
                // disable the default FullScreenCover animation
                transaction.disablesAnimations = true
                
                // add custom animation for presenting fullScreenCover
                transaction.animation = .smooth(duration: 1)
            }


        
        
       
    }
}

#Preview {
    WelcomeView()
}
