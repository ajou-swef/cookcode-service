//
//  File.swift
//  
//
//  Created by wooyoung on 2023/07/13.
//

import Foundation

public protocol Mock {
    static func mock() -> Self
    static func mocks(_ count: Int) -> [Self]
}

extension Mock {
    public static func mocks(_ count: Int) -> [Self] {
        var mocks: [Self] = []
        for _ in 0..<count {
            mocks.append(mock())
        }
        return mocks
    }
}

extension Array: Mock where Element: Mock {
    public static func mock() -> Array<Element> {
        Element.mocks(5)
    }
}
