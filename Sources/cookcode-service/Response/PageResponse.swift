//
//  PageServiceResponse.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/30.
//

import Foundation

public struct PageResponse<T: Decodable & Mock>: Decodable, Mock {
    public static func mock() -> PageResponse<T> {
        PageResponse(content: .mock(), numberOfElements: 1, hasNext: true)
    }
    
    public let content: [T]
    public var numberOfElements: Int
    public var hasNext: Bool
}
