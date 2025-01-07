//
//  WebViewContainer.swift
//  NewsAPI
//
//  Created by Samuel Polichino (student LM) on 12/13/24.
//

import SwiftUI

struct WebViewContainer: View {
   
    @Binding var viewState: ViewState
    @Binding var recipeURL: String
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WebViewContainer(viewState: .constant(.webView), recipeURL: .constant("https://google.com/"))
}
