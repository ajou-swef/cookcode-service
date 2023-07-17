//
//  RecipeFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

public struct RecipeFormDTO: Encodable {
    public init(title: String, description: String, thumbnail: String, ingredients: [Int], optionalIngredients: [Int], steps: [StepFormDTO], isPremium: Bool? = nil) {
        self.title = title
        self.description = description
        self.thumbnail = thumbnail
        self.ingredients = ingredients
        self.optionalIngredients = optionalIngredients
        self.steps = steps
        self.isPremium = isPremium
    }
    
    public let title, description, thumbnail: String
    public let ingredients, optionalIngredients: [Int]
    public let deletedThumbnails: [String] = []
    public var steps: [StepFormDTO]
    public var isPremium: Bool?
}
