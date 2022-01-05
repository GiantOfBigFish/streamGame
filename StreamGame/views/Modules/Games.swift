//
//  Games.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 2/01/22.
//

import SwiftUI
import Kingfisher

struct Games: View {
    @ObservedObject var allVideoGames = ViewModel()
    @State var gameViewIsActive: Bool = false
    @State var currentGame: GameElement? = nil
    let gridForm = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ZStack {
            Color("marine").ignoresSafeArea()
            VStack {
                Text ("Juegos")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 16, leading: 0, bottom: 60, trailing: 0 ))
                ScrollView {
                    LazyVGrid ( columns: gridForm, spacing: 8){
                        ForEach(allVideoGames.gamesData, id: \.self) {
                            game in
                            Button ( action: {
                                currentGame = game
                                print  ("pressed: Current game \(currentGame?.title)")
                            } , label: {
                                VStack {
                                    KFImage( URL( string: game.galleryImages[0])!)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle.init(cornerRadius: 4))
                                        .padding(.bottom, 12)
                                    Text(game.title).font(.title3)
                                }
                                
                            })
                        }
                    }
                }
            }.padding(.horizontal,6)
        }.navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
//            .onAppear(
//                perform: {
//                    let firstGame:GameElement = allVideoGames.gamesData[0]
//                    print("first element of json \(firstGame)")
//                    print("title of first videogame of json \(firstGame.title)")
//                }
//            )
    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
