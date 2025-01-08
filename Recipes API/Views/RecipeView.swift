//
//  RecipeView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/2/25.
//

import SwiftUI

struct RecipeView: View {
   
    @Binding var idMeal: String
    
    @State var insideData: FetchRecipeData = FetchRecipeData(idMeal: idMeal)
    

    var body: some View {
        
        VStack{
            Text(insideData.response.strIngredient1)
        }.task {
            await insideData.getData()
        }
    }
        
}

#Preview {
    RecipeView(idMeal: .constant(" "))
}
