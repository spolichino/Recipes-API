//
//  FetchData.swift
//  NewsAPI
//
//  Created by Samuel Polichino (student LM) on 12/13/24.
//

import Foundation

struct FetchRecipeData{
    
    var response: RecipeResponse = RecipeResponse()
    
    var URLbase: String = "https://www.themealdb.com/api/json/v1/1/lookup.php?i="
    
    
   
    mutating func getData(idMeal: String) async{
        
        
        let URLString = URLbase + idMeal

        
        guard let url = URL(string: URLString) else {return}
        
        //underscore is a placeholder for a variable that you're not going to identify
        guard let (data, _) = try? await URLSession.shared.data(from: url) else {return}
        
        guard let r = try? JSONDecoder().decode(RecipeResponse.self, from: data) else {return}
       
        response = r
        
    }
    
}

struct RecipeResponse: Codable{
    var meals: [Recipe] = []
}

struct Recipe: Codable{
    var idMeal: String = ""
    var strMeal: String = ""
    var strCategory: String = ""
    var strArea: String = ""
    var strIngredient1: String = ""
}


extension Recipe: Identifiable{
    var id: String {idMeal ?? " "}
}
