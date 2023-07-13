//
//  User.swift
//  Cookcode
//
//  Created by 노우영 on 2023/04/30.
//

import Foundation

public struct UserCellDTO: Decodable, Hashable, Mock {
    public static func mock() -> UserCellDTO {
        UserCellDTO(userID: 1, profileImage: "https://picsum.photos/200/300/?blur", nickname: "닉네임")
    }

    public let userID: Int
    public let profileImage: String?
    public let nickname: String

    static let MOCK_DATA: UserCellDTO = UserCellDTO(userID: 1, profileImage: "https://picsum.photos/200/300/?blur", nickname: "Page")

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case profileImage, nickname
    }
}
