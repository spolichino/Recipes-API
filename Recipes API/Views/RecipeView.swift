//
//  RecipeView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/2/25.
//

import SwiftUI

struct RecipeView: View {
   
    @Binding var meal: Recipe
    
    @State var insideData: FetchRecipeData = FetchRecipeData()

    var body: some View {
        
        
        ScrollView{
            ForEach(insideData.response.meals){ recipe in
                VStack(alignment: .leading) {
                    
                    Text(recipe.idMeal ?? " ")
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                }
            }
        }
        .task {
            await insideData.getData(url: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\($meal.idMeal)")
            
        }
    }
        
}
    

#Preview {
    RecipeView(meal: .constant(Recipe()))
}
