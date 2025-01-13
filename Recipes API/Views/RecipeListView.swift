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
                        RecipeView(idMeal: $meal.idMeal)
                    } label: {
                        
                        HStack{
                            Text(meal.strMeal)
                            
                            Spacer()
                            
                            Image(meal.strMeal)
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                        }
                    }
                }
                .task {
                    await outsideData.getData()
                }
                .navigationTitle("Chicken Recipes")
                .font(Constants.textFont)
            }
            
    }
}

#Preview {
    RecipeListView(viewState: .constant(.recipeList), recipeURL: .constant("https://google.com/"))
}
