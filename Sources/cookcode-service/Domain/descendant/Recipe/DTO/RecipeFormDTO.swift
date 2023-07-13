//
//  RecipeFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

public struct RecipeFormDTO: Encodable {
    public let title, description, thumbnail: String
    public let ingredients, optionalIngredients: [Int]
    public let deletedThumbnails: [String] = []
    public var steps: [StepFormDTO]
    public var isPremium: Bool?
    
//    init (recipeForm: RecipeForm) {
//        title = recipeForm.title
//        description = recipeForm.description
//        thumbnail = recipeForm.thumbnail
//
//        ingredients = recipeForm.ingredients
//        optionalIngredients = recipeForm.optionalIngredients
//        isPremium = recipeForm.presentToOnlyMembership
//
//        steps = []
//        for i in recipeForm.steps.indices {
//            steps.append(StepFormDTO(form: recipeForm.steps[i], seq: i+1))
//        }
//    }
}
