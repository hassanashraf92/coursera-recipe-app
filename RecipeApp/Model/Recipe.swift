//
//  Recipe.swift
//  RecipeApp
//
//  Created by Hassan on 09/08/2023.
//

import Foundation

struct Recipe: Codable {
    let imageName: String
    let title: String
    let creator: String
    let timeToMake: String
    let calories: Int
    let isFavourite: Bool
    let description: String
    let ingredients: [Ingredient]
    
    struct Ingredient: Codable {
        let image: String
        let name: String
    }
}
