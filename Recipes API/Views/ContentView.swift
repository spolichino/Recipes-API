//
//  ContentView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Recipes")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
