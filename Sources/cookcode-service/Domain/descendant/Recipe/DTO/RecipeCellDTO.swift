//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

struct RecipeCellDTO: Decodable, Hashable, Mock {
    
    static var createdMockCount: Int = 0
    
    static func mock() -> RecipeCellDTO {
        createdMockCount += 1
        return RecipeCellDTO(recipeID: createdMockCount, user: UserCellDto.mock(), title: "title", description: "description", createdAt: "2023-12-12", updatedAt: "2023-12-14", thumbnail: "https://picsum.photos/800/200", likeCount: 1, isCookable: Bool.random())
    }
    
    let recipeID: Int
     let user: UserCellDto
     let title, description: String
     let createdAt, updatedAt, thumbnail: String
    let likeCount: Int
    let isCookable: Bool

     enum CodingKeys: String, CodingKey {
         case recipeID = "recipeId"
         case user, title, description, createdAt, updatedAt, thumbnail
         case likeCount, isCookable
     }
}
