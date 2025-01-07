//
//  RecipeView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/2/25.
//

import SwiftUI

struct RecipeView: View {
   
    @Binding var mealId: Int
    
    @State var insideData: FetchRecipeData = FetchRecipeData()

    var body: some View {
        
        VStack{
            Text(insideData.response.strMeal)
        }.task {
            await insideData.getData(url: "https://www.themealdb.com/api/json/v1/1/lookup.php?i=\(mealId)")
            
        }
    }
        
}
    

#Preview {
    RecipeView(mealId: .constant(0))
}
