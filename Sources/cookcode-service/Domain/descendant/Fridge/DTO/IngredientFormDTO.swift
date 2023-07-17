//
//  IngredientFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/08.
//

import Foundation

public struct IngredientFormDTO: Encodable {
    public init(ingredId: Int, expiredAt: String, quantity: Int) {
        self.ingredId = ingredId
        self.expiredAt = expiredAt
        self.quantity = quantity
    }
    
    public let ingredId: Int
    public let expiredAt: String
    public let quantity: Int
}

