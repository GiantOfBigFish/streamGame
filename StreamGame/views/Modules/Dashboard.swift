//
//  Dashboard.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 1/01/22.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        ZStack {
            Color("marine").ignoresSafeArea()
            VStack {
                
            }.padding(.horizontal, 18)
        }.navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
