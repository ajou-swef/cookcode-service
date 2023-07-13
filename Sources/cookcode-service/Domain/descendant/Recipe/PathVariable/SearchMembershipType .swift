//
//  SearchMembershipType .swift
//  Cookcode
//
//  Created by 노우영 on 2023/06/12.
//

import SwiftUI

public enum SearchMembershipType: String, CaseIterable, Identifiable {
    case all
    case subscribe
    case memberhsip
    
    public var id: String {
        self.rawValue
    }
    
    public var text: String {
        switch self {
        case .memberhsip:
            return "멤버십"
        case .subscribe:
            return "구독"
        case .all:
            return "전체"
        }
    }
    
    public var pathVariable: String {
        switch self {
        case .all:
            return ""
        case .subscribe:
            return "/publisher"
        case .memberhsip:
            return "/membership"
        }
    }
}
