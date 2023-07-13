//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

public struct ServiceError: Codable, Error {
    public let message: String
    public let status: Int
    
    public static func encodeError() -> ServiceError {
        ServiceError(message: "서버 인코딩 에러", status: 400)
    }
    
    public static func decodeError() -> ServiceError {
        ServiceError(message: "디코딩 에러", status: 400)
    }
    
    public static func mock() -> ServiceError {
        ServiceError(message: "실패", status: 400)
    }
}
