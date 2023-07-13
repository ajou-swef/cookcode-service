//
//  StepFormDTO.swift
//  Cookcode
//
//  Created by 노우영 on 2023/05/10.
//

import Foundation

public struct StepFormDTO: Encodable {
    public let seq: Int
    public let description: String
    public let title: String = ""
    public let videos, photos, deletedVideos, deletedPhotos: [String]
    
//    init(form: ContentWrappedStepForm, seq: Int) {
//        description = form.description
//        videos = form.videoURLs
//        photos = form.imageURLs
//        deletedVideos = form.deletedVideos
//        deletedPhotos = form.deletedPhotos
//        self.seq = seq
//    }
}
