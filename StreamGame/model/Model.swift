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

struct GameElement: Codable, Hashable {
    var title:String
    var studio:String
    var contentRaiting:String
    var publicationYear:String
    var description:String
    var platforms:[String]
    var tags:[String]
    var videosUrls:videoUrl?
    var galleryImages:[String]
   
}

struct videoUrl:Codable, Hashable {
    
    var mobile:String
    var tablet:String
    
}


