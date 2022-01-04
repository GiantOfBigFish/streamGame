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
                
                Text("CATEGORÍA SUGERIDAS PARA TI")
                    .font(.title3)
                    .foregroundColor(.white).bold()
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                    .padding(.top)
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        Button (action: {
                            print("vector shot")
                        }, label: {
                            ZStack {
                                RoundedRectangle (cornerRadius: 8)
                                    .fill(Color("blue-gray"))
                                    .frame(width: 160, height: 90)
                                Image ("Vector-shot")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 42, height: 42)
                            }
                        })
                        Button (action: {}, label: {
                            ZStack {
                                RoundedRectangle (cornerRadius: 8)
                                    .fill(Color("blue-gray"))
                                    .frame(width: 160, height: 90)
                                Image ("rpg-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 42, height: 42)
                            }
                        })
                        Button (action: {}, label: {
                            ZStack {
                                RoundedRectangle (cornerRadius: 8)
                                    .fill(Color("blue-gray"))
                                    .frame(width: 160, height: 90)
                                Image ("open-world-icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 42, height: 42)
                            }
                        })
                    }
                }
                Text("RECOMENDADOS PARA TI")
                    .font(.title3)
                    .foregroundColor(.white).bold()
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                    .padding(.top)
                ScrollView( .horizontal, showsIndicators: false){
                    HStack {
                        Button(action: {
                            urlDefault = urlVideos[1]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("Abzu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                        Button(action: {
                            urlDefault = urlVideos[2]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("CrashBandicoot")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                        Button(action: {
                            urlDefault = urlVideos[3]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("DEATHSTRANDING")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                    }
                }
                Text("VIDEOS QUE PODRÍAN GUSTARTE")
                    .font(.title3)
                    .foregroundColor(.white).bold()
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
                    .padding(.top)
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        Button(action: {
                            urlDefault = urlVideos[4]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("Cuphead")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                        Button(action: {
                            urlDefault = urlVideos[5]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("Hades")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                        Button(action: {
                            urlDefault = urlVideos[6]
                            print("URL: \(urlDefault)")
                            isPlayerActive = true
                        }, label: {
                            Image("gta")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 240, height: 135)
                        })
                        
                    }
                }
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
