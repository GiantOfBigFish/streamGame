//
//  Home.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 30/12/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            Text("Profile")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .rounded))
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            Text("Games")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .rounded))
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }
            Text("Home")
                .font(.system(
                        size: 30,
                        weight: .bold,
                        design: .rounded))
                .tabItem {
                    Image(systemName: "house")
                    Text("home")
                }
            Text("Favoritos")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .rounded))
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
                //test
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
