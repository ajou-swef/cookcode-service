//
//  StepFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

public struct StepFormDTO: Encodable {
    internal init(seq: Int, description: String, videos: [String], photos: [String], deletedVideos: [String], deletedPhotos: [String]) {
        self.seq = seq
        self.description = description
        self.videos = videos
        self.photos = photos
        self.deletedVideos = deletedVideos
        self.deletedPhotos = deletedPhotos
    }
    
    public let seq: Int
    public let description: String
    public let title: String = ""
    public let videos, photos, deletedVideos, deletedPhotos: [String]
}
