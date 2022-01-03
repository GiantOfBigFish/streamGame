//
//  Model.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 2/01/22.
//

import Foundation

struct GameElements: Codable {
    var games: [GameElement]
}

struct GameElement: Codable {
    var title, studio, contentRaiting, publicationYear: String
    var gameDescription: String
    var platforms, tags: [String]
    var videosUrls: VideosUrls
    var galleryImages: [String]
   
}

    // MARK: - VideosUrls
struct VideosUrls: Codable {
    let mobile, tablet: String
}


