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
    
    
    func getImageURL(imageLink: String) -> URL?{
        guard let url = URL(string: imageLink) else{return URL(string: "https://google.com/")}
        return url
    }
    
    var body: some View {
        
        
            NavigationView {
                
                List($outsideData.response.meals) { $meal in
                    NavigationLink {
                        RecipeView(idMeal: $meal.idMeal)
                    } label: {
                        
                        HStack{
                            Text(meal.strMeal)
                            
                            Spacer()
                            
                            AsyncImage(url: getImageURL(imageLink: meal.strMealThumb)){
                                phase in
                                switch phase{
                                case.empty:
                                    ProgressView()
                                case.success(let image): image.resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 50)
                                case.failure(let error):
                                    Image("fnf")
                                        .aspectRatio(contentMode: .fit)
                                            .frame(height: 50)
                                }
                            
                            }
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
