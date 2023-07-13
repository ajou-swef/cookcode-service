//
//  PostRecipeResponse.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

public struct PostRecipeResonse: Codable, Mock {
    public static func mock() -> PostRecipeResonse {
        PostRecipeResonse(recipeID: 1)
    }
    
    public let recipeID: Int

   enum CodingKeys: String, CodingKey {
       case recipeID = "recipeId"
   }
}
