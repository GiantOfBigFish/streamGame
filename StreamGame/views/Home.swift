//
//  Home.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 30/12/21.
//

import SwiftUI

struct Home: View {
    @State var tabSelected: Int = 2
    init () {
//Solution #1
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor( Color("tabcolor") )
        UITabBar.appearance().standardAppearance = appearance
        if#available(iOS 15.0, *) {
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }

//Solution #2
//        UITabBar.appearance().backgroundColor = UIColor( Color("tabcolor") )
//        UITabBar.appearance().barTintColor = .white
//        UITabBar.appearance().isTranslucent = true
    }
    
    var body: some View {
        
        TabView (selection: $tabSelected) {
            Text("Profile")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .rounded))
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }.tag(0)
            Games().tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }.tag(1)
            
            Dashboard().tabItem {
                    Image(systemName: "house")
                    Text("home")
                }.tag(2)
            
            Text("Favoritos")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .rounded))
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }.tag(3)
        }.accentColor(.white)
    }
   
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
