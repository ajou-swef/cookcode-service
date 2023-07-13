//
//  RecipeFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

struct RecipeFormDTO: Encodable {
    let title, description, thumbnail: String
    let ingredients, optionalIngredients: [Int]
    let deletedThumbnails: [String] = []
    var steps: [StepFormDTO]
    var isPremium: Bool?
    
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
