//
//  ContentView.swift
//  NewsAPI
//
//  Created by Samuel Polichino (student LM) on 12/10/24.
//

import SwiftUI

enum ViewState{
    case recipeList, webView
}



struct ContentView: View {
  
   
    @State var viewState: ViewState = .recipeList
    @State var recipeURL: String = ""
    
    var body: some View {
        if viewState == .recipeList{
            RecipeListView(viewState: $viewState, recipeURL: $recipeURL)
        }
        else{
            WebViewContainer(viewState: $viewState, recipeURL: $recipeURL)
        }
    }
}

#Preview {
    ContentView()
}
