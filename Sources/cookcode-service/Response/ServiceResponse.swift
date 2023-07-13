//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

public struct ServiceResponse<T: Decodable & Mock>: Decodable  {
    
    public let message: String
    public let status: Int
    public let data: T
    
    static func mock() -> ServiceResponse<T> {
        ServiceResponse(message: "응답 성공", status: 200, data: T.mock())
    }
}

