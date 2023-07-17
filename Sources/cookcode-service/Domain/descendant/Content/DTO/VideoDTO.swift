//
//  VideoDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/11.
//

import Foundation


public struct VideoDTO: Codable, Mock, Hashable {
    public init(stepVideoID: Int, videoURL: String) {
        self.stepVideoID = stepVideoID
        self.videoURL = videoURL
    }
    
    public static func mock() -> VideoDTO {
        VideoDTO(stepVideoID: 1, videoURL: "")
    }
    
    public let stepVideoID: Int
    public let videoURL: String
    
    

    enum CodingKeys: String, CodingKey {
        case stepVideoID = "stepVideoId"
        case videoURL = "videoUrl"
    }
}
