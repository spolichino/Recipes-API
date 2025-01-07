//
//  RecipeListView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 12/19/24.
//

import SwiftUI



struct RecipeListView: View {
    
    @State var outsideData: FetchData = FetchData()
    
    @Binding var viewState: ViewState
    @Binding var recipeURL: String
    
    var body: some View {
        
        NavigationView {
            
            List($outsideData.response.meals) { $meal in
                NavigationLink {
                    RecipeView(mealId: $meal.idMeal)
                } label: {
                    Text(meal.strMeal ?? " ")
                }
            }
            .navigationTitle("Chicken")
            .task {
                await outsideData.getData()
            }
        }
        
        
    }
}

#Preview {
    RecipeListView(viewState: .constant(.recipeList), recipeURL: .constant("https://google.com/"))
}
