//
//  ContentView.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 26/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color("marine").ignoresSafeArea()
            VStack {
                Image("logoSG")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250).padding(.bottom, 40)
                Login()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
