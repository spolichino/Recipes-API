//
//  FetchData.swift
//  NewsAPI
//
//  Created by Samuel Polichino (student LM) on 12/13/24.
//

import Foundation
import SwiftUI

struct FetchData{
    
    var response: Response = Response()
   
    mutating func getData() async{
        let URLString = "https:www.themealdb.com/api/json/v1/1/filter.php?i=chicken"

        
        guard let url = URL(string: URLString) else {return}
        
        
        
        //underscore is a placeholder for a variable that you're not going to identify
        guard let (data, _) = try? await URLSession.shared.data(from: url) else {return}
        
        guard let r = try? JSONDecoder().decode(Response.self, from: data) else {return}
       
        response = r
        
        
    }
    
}

struct Response: Codable{
    var meals: [Meal] = []
}

struct Meal: Codable{
    var strMeal: String = ""
    var strMealThumb: String = ""
    var idMeal: String = ""
}

extension Meal: Identifiable{
    var id: String {idMeal ?? " "}
}
