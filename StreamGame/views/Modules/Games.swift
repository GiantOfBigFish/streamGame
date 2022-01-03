//
//  Games.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 2/01/22.
//

import SwiftUI

struct Games: View {
    @ObservedObject var allVideoGames = ViewModel()
    var body: some View {
        Text("Hellow from games view")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .onAppear(
                perform: {
                    let firstGame:GameElement = allVideoGames.gamesData[0]
                    print("first element of json \(firstGame)")
                    print("title of first videogame of json \(firstGame.title)")
                }
            )
    }
}

struct Games_Previews: PreviewProvider {
    static var previews: some View {
        Games()
    }
}
