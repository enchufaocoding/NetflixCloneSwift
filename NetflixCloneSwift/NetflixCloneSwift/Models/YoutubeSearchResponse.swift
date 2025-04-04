//
//  YoutubeSearchResponse.swift
//  NetflixCloneSwift
//
//  Created by Jose Alberto Rosario Castillo on 3/4/25.
//


import Foundation

struct YoutubeSearchResponse : Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
