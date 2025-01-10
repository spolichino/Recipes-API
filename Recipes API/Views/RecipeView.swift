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
                Text("\(meal.strIngredient1)|\(meal.strMeasure1)")
                Text("\(meal.strIngredient2)|\(meal.strMeasure)")
                Text("\(meal.strIngredient3)|\(meal.strMeasure)")
                Text("\(meal.strIngredient4)|\(meal.strMeasure)")
                Text("\(meal.strIngredient5)|\(meal.strMeasure)")
                Text("\(meal.strIngredient6)|\(meal.strMeasure)")
                Text("\(meal.strIngredient7)|\(meal.strMeasure)")
                Text("\(meal.strIngredient8)|\(meal.strMeasure)")
                Text("\(meal.strIngredient9)|\(meal.strMeasure)")
                Text("\(meal.strIngredient10)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                Text("\(meal.strIngredient)|\(meal.strMeasure)")
                
                
                
                // Instructions
                Text(meal.strInstructions ?? "Test")
                    .multilineTextAlignment(.leading)
                    .padding()
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
