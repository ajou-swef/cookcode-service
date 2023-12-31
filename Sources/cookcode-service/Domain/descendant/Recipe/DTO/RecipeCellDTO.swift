//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

public struct RecipeCellDTO: Decodable, Hashable, Mock {
    
    static var createdMockCount: Int = 0
    
    public static func mock() -> RecipeCellDTO {
        createdMockCount += 1
        return RecipeCellDTO(recipeID: createdMockCount, user: UserCellDTO.mock(), title: "title", description: "description", createdAt: "2023-12-12", updatedAt: "2023-12-14", thumbnail: "https://picsum.photos/800/200", likeCount: 1, isCookable: Bool.random())
    }
    
    public let recipeID: Int
    public let user: UserCellDTO
    public let title, description: String
    public let createdAt, updatedAt, thumbnail: String
    public let likeCount: Int
    public let isCookable: Bool

     enum CodingKeys: String, CodingKey {
         case recipeID = "recipeId"
         case user, title, description, createdAt, updatedAt, thumbnail
         case likeCount, isCookable
     }
}
