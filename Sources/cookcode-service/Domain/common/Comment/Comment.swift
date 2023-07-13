//
//  Comment.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/29.
//

import SwiftUI

struct CommentDTO: Decodable, Mock {
    static func mock() -> CommentDTO {
        CommentDTO(commentId: 1, user: .mock(), comment: "댓글")
    }
    
    let commentId: Int
    let user: UserCellDto
    let comment: String
}

