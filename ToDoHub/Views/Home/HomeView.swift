//
//  ContentView.swift
//  ToDoHub
//
//  Created by Isaias Cuvula on 10.10.23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("ToDoHub")
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
