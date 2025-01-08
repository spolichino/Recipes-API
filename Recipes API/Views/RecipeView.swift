//
//  RecipeView.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 1/2/25.
//

import SwiftUI

struct RecipeView: View {
   
    @Binding var idMeal: String
    
    @State var insideData: FetchRecipeData = FetchRecipeData()
    

    var body: some View {
        
        
        List(insideData.response.meals){ meal in

            Text(meal.idMeal ?? " ")
            
        }
        .task {
            await insideData.getData(idMeal: idMeal)
        }
    }
        
}

#Preview {
    RecipeView(idMeal: .constant(" "))
}
