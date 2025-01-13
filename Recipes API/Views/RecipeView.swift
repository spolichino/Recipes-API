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
        
        ZStack {
            
            
            
            
            ScrollView{
                ForEach(insideData.response.meals){ meal in
                    // Name
                    Text(meal.strMeal)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .background(Color(Constants.backgroundColor))
                        .cornerRadius(20)
                    // Image
                    Image(meal.strMeal)
                        .resizable()
                        .scaledToFit()
                        .padding()
                    // Ingredients/Measure
                    Text("Ingredients")
                        .font(Constants.titleFont)
                        .bold()
                        .padding()
                        .background(Color(Constants.backgroundColor))
                        .cornerRadius(20)
                    
                    
                    HStack{
                        
                        Spacer()
                        
                        VStack(alignment: .leading){
                            Text("\(meal.strIngredient1)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient2)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient3)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient4)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient5)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient6)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient7)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient8)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient9)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient10)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient11)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient12)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient13)")
                                .font(Constants.textFont)
                            Text("\(meal.strIngredient14)")
                                .font(Constants.textFont)
                            if let ingredient = meal.strIngredient15{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                            if let ingredient = meal.strIngredient16{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                            if let ingredient = meal.strIngredient17{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                            if let ingredient = meal.strIngredient18{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                            if let ingredient = meal.strIngredient19{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                            if let ingredient = meal.strIngredient20{
                                Text(ingredient)
                                    .font(Constants.textFont)
                            }
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading){
                            Text("\(meal.strMeasure1)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure2)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure3)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure4)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure5)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure6)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure7)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure8)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure9)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure10)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure11)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure12)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure13)")
                                .font(Constants.textFont)
                            Text("\(meal.strMeasure14)")
                                .font(Constants.textFont)
                            if let measure = meal.strMeasure15{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            if let measure = meal.strMeasure16{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            if let measure = meal.strMeasure17{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            if let measure = meal.strMeasure18{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            if let measure = meal.strMeasure19{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            if let measure = meal.strMeasure20{
                                Text(measure)
                                    .font(Constants.textFont)
                            }
                            
                            
                            
                            
                            
                        }
                        
                        Spacer()
                    }
                    
            
                    // Instructions
                    Text("Instructions")
                        .font(.title)
                        .bold()
                        .padding()
                        .background(Color(Constants.backgroundColor))
                        .cornerRadius(20)
                    Text("\(meal.strInstructions)")
                        .padding(.horizontal, 25)
                }
                
                .task {
                    await insideData.getData(idMeal: idMeal)
                }
            }
        }
        
        
    }
    
}

#Preview {
    RecipeView(idMeal: .constant(" "))
}
