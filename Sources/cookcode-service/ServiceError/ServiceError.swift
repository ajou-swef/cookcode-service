//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

struct ServiceError: Codable, Error {
    let message: String
    let status: Int
    
    static func encodeError() -> ServiceError {
        ServiceError(message: "서버 인코딩 에러", status: 400)
    }
    
    static func decodeError() -> ServiceError {
        ServiceError(message: "디코딩 에러", status: 400)
    }
    
    static func mock() -> ServiceError {
        ServiceError(message: "실패", status: 400)
    }
}
