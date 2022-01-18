//
//  GameContent.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 5/01/22.
//

import SwiftUI
import AVKit

struct GameContent: View {
    var currentGame: GameElement
    var body: some View {
        ZStack {
            Color("marine").ignoresSafeArea()
            VStack {
                Video(url: currentGame.videosUrls.mobile).frame(height: 300)
                ScrollView {
                    InfoVideo(game: currentGame).padding(.bottom)
                }.frame(maxWidth: .infinity)
            }
        }
    }
}

struct Video :View {
    var url:String
    var body: some View {
        VideoPlayer( player: AVPlayer(url: URL( string: url)!)).ignoresSafeArea()
    }
}

struct InfoVideo: View {
    var game: GameElement
    var body: some View{
        VStack ( alignment: .leading, spacing: 0 ) {
            Text(game.title)
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(.leading)
            HStack {
                Text(game.studio)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5)
                    .padding(.leading)
                Text(game.contentRaiting)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5)
                    .padding(.leading)
                Text(game.publicationYear)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.top, 5)
                    .padding(.leading)
            }
            
            Text(game.description)
                .foregroundColor(.white)
                .font(.subheadline)
                .padding(.top, 5)
                .padding(.leading)
            HStack {
                ForEach(game.tags, id:\.self ){
                    tag in
                    Text("#\(tag)")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .padding(.top, 5)
                        .padding(.leading)
                }
            }
            
        }.frame(maxWidth: .infinity, alignment: .leading)
       
    }
}

struct GameContent_Previews: PreviewProvider {
    
    static var previews: some View {
        GameContent(currentGame:
                        GameElement( title: "Sonic The Hedgehog",
                                     studio: "Sega",
                                     contentRaiting: "E+",
                                     publicationYear: "1991",
                                     description: "Juego de Sega Genesis publicado en 1991 con más de 40 millones de copias vendidas actualmente",
                                     platforms: ["switch", "movil"],
                                     tags: ["plataformas","mascota"],
                                     videosUrls: videoUrl(
                                        mobile: "https://dl.dropboxusercontent.com/s/k6g0zwmsxt9qery/TheWitcher480.mp4",
                                        tablet: "https://dl.dropboxusercontent.com/s/9faic5dtebavp1o/TheWitcherMax.mp4"),
                                     galleryImages:[ "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg"]))
    }
}
