//
//  IngredientCell.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/01.
//

import Foundation

// MARK: - DataClass

public struct IngredientDetailDTOs: Codable, Mock {
    public static func mock() -> IngredientDetailDTOs {
        return IngredientDetailDTOs(ingreds: IngredientDetailDTO.mocks(10)) 
    }
    
    public let ingreds: [IngredientDetailDTO]
}

public struct IngredientDetailDTO: Codable, Mock {
    public static func mock() -> IngredientDetailDTO {
        return IngredientDetailDTO(fridgeIngredId: Int.random(in: 0..<1000), ingredId: 1, quantity: 10, name: "양배추", category: "vegetables", _expiredAt: "2023-05-05")
    }
    
    
    public let fridgeIngredId, ingredId: Int
    public let quantity: Int
    public let name, category: String
    private(set) var _expiredAt: String
    

    enum CodingKeys: String, CodingKey {
        case fridgeIngredId, ingredId
        case name, category, quantity
        case _expiredAt = "expiredAt"
    }
    
    public mutating func expiredAt(_ expiredAt: String) {
        self._expiredAt = expiredAt
    }
}

//
//extension Array: Mock where Element == IngredientDetailDTO {
//    static func mock() -> Array<Element> {
//        Element.mocks(10)
//    }
//}
