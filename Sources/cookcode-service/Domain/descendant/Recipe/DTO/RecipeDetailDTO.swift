//
//  RecipeDetailDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/11.
//

import Foundation

public struct RecipeDetailDTO: Decodable, Mock {
    public static func mock() -> RecipeDetailDTO {
        RecipeDetailDTO(recipeID: 1, user: .mock(), title: "title", description: "description", ingredients: IngredientDTO.mocks(5), optionalIngredients: IngredientDTO.mocks(2), steps: StepDTO.mocks(1), createdAt: "2023-03-03", updatedAt: "2023-03-03", thumbnail: "", isLiked: false, likeCount: 31, commentCount: 11)
    }
    
    public let recipeID: Int
    public let user: UserCellDTO
    public let title, description: String
    public let ingredients: [IngredientDTO]
    public let optionalIngredients: [IngredientDTO]
    public let steps: [StepDTO]
    public let createdAt, updatedAt, thumbnail: String
    public let isLiked: Bool
    public let likeCount: Int
    public let commentCount: Int

    enum CodingKeys: String, CodingKey {
        case recipeID = "recipeId"
        case user, title, description, ingredients, optionalIngredients, steps, createdAt, updatedAt, thumbnail
        case isLiked, likeCount, commentCount
    }
}
