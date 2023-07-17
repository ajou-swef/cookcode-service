//
//  StepDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/11.
//

import Foundation

public struct StepDTO: Codable, Mock, Hashable, Identifiable {
    
    public static func mock() -> StepDTO {
        StepDTO(stepID: 1, seq: 1, description: "description", photos: PhotoDTO.mocks(1), videos: VideoDTO.mocks(1))
    }
    
    public let id: String = UUID().uuidString
    public let stepID, seq: Int
    public let description: String
    public var photos: [PhotoDTO]
    public var videos: [VideoDTO]
    
    public var containsAllRequiredInformation: Bool {
        !description.isEmpty && !contentURLs.isEmpty
    }
    
    public var photosIsEmpty: Bool {
        photos.isEmpty
    }
    
    public var contentURLs: [String] {
        if !photosIsEmpty {
            return photos.map { $0.photoURL }
        }
        return videos.map { $0.videoURL }
    }


    enum CodingKeys: String, CodingKey {
        case stepID = "stepId"
        case seq, description, photos, videos
    }
    
    public init (stepID: Int, seq: Int, description: String, photos: [PhotoDTO], videos: [VideoDTO]) {
        self.stepID = stepID
        self.seq = seq
        self.description = description
        self.photos = photos
        self.videos = videos
    }
}
