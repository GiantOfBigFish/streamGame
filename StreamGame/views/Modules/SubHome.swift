    //
    //  SubHome.swift
    //  StreamGame
    //
    //  Created by Esteban Hernandez on 2/01/22.
    //

import SwiftUI
import AVKit

struct SubHome: View {
    @State var urlDefault:String = "https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4"
    @State var isPlayerActive = false
    let urlVideos: [String] = ["https://cdn.cloudflare.steamstatic.com/steam/apps/256658589/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256671638/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256720061/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256814567/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256801252/movie480.mp4",
                               "https://cdn.cloudflare.steamstatic.com/steam/apps/256757119/movie480.mp4"]
    var body: some View {
        ZStack {
            Color("marine")
            VStack {
                Text("LOS MÁS POPULARES")
                    .font(.title3)
                    .foregroundColor(.white).bold()
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                    .padding(.top)
                
                ZStack {
                    Button(action:{
                        urlDefault = urlVideos[0]
                        print("URL: \(urlDefault)")
                        isPlayerActive = true
                    
                    }, label: {
                        ZStack {
                            VStack(spacing: 0) {
                                Image("TheWitcher3").resizable().scaledToFit()
                                Text("The Witcher 3: Wild Hunt")
                                    .frame(minWidth: 0,  maxWidth: .infinity,  alignment: .leading)
                                    .background(Color("blue-gray"))
                                    .foregroundColor(.white)
                            }
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 42, height: 42)
                        }
                    })
                }.frame(minWidth: 0, maxWidth: .infinity,alignment: .center)
                .padding(.vertical)
                
            }
        }
      
        NavigationLink(
            destination: VideoPlayer (player: AVPlayer(url: URL(string:urlDefault)!))
                .frame(width: 400, height: 400),
            isActive: $isPlayerActive,
            label: {EmptyView()})
    }
}

struct SubHome_Previews: PreviewProvider {
    static var previews: some View {
        SubHome()
    }
}
