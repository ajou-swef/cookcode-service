//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation


public struct DefaultResponse: Codable  {
    
    public let message: String
    public let status: Int
    
    static func mock() -> DefaultResponse {
        DefaultResponse(message: "성공", status: 200)
    }
}
