//
//  Recipes_APIApp.swift
//  Recipes API
//
//  Created by Samuel Polichino (student LM) on 12/17/24.
//

import SwiftUI

@main
struct Recipes_APIApp: App {
    var body: some Scene {
        WindowGroup {
            RecipeListView(viewState: .constant(.recipeList), recipeURL: .constant("https://google.com/"))
        }
    }
}
