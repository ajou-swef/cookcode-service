//
//  Comment.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/29.
//

import SwiftUI

public struct CommentDTO: Decodable, Mock {
    public static func mock() -> CommentDTO {
        CommentDTO(commentId: 1, user: .mock(), comment: "댓글")
    }
    
    let commentId: Int
    let user: UserCellDTO
    let comment: String
}

