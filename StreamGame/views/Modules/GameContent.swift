//
//  GameContent.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 5/01/22.
//

import SwiftUI

struct GameContent: View {
    var currentGame: GameElement
    var body: some View {
        Text( " Hello from \(currentGame.title)")
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
                                     galleryImages:[ "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg",
                                                    "https://cdn.cloudflare.steamstatic.com/steam/apps/268910/ss_615455299355eaf552c638c7ea5b24a8b46e02dd.600x338.jpg"]))
    }
}
