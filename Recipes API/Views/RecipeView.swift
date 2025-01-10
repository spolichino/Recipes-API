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
        
        //make this a scroll view, except watch out that makes it so no text appears
        
        ScrollView{
            ForEach(insideData.response.meals){ meal in
               // Name
                Text(meal.strMeal ?? "Test")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                // Image
                Image(meal.strMeal)
                    .resizable()
                    .scaledToFit()
                    .padding()
                // Ingredients/Measure
                
                Text("\(meal.strIngredient1): \(meal.strMeasure1)")
                Text("\(meal.strIngredient2): \(meal.strMeasure2)")
                Text("\(meal.strIngredient3): \(meal.strMeasure3)")
                Text("\(meal.strIngredient4): \(meal.strMeasure4)")
                Text("\(meal.strIngredient5): \(meal.strMeasure5)")
                Text("\(meal.strIngredient6): \(meal.strMeasure6)")
                Text("\(meal.strIngredient7): \(meal.strMeasure7)")
                Text("\(meal.strIngredient8): \(meal.strMeasure8)")
                Text("\(meal.strIngredient9): \(meal.strMeasure9)")
                Text("\(meal.strIngredient10): \(meal.strMeasure10)")
                Text("\(meal.strIngredient11): \(meal.strMeasure11)")
                Text("\(meal.strIngredient12): \(meal.strMeasure12)")
                Text("\(meal.strIngredient13): \(meal.strMeasure13)")
                Text("\(meal.strIngredient14): \(meal.strMeasure14)")
      
                
                
                
                // Instructions
//                Text(meal.strInstructions ?? "Test")
//                    .multilineTextAlignment(.leading)
//                    .padding()
            }
            
            .task {
                await insideData.getData(idMeal: idMeal)
            }
        }
        
        
    }
    
}

#Preview {
    RecipeView(idMeal: .constant(" "))
}
