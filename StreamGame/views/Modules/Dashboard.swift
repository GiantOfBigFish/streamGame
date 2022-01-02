//
//  Dashboard.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 1/01/22.
//

import SwiftUI

struct Dashboard: View {
    
    @State var toSearch:String = ""
    
    var body: some View {
        ZStack {
            Color("marine").ignoresSafeArea()
            VStack {
            
                VStack {
                    Image("logoSG")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                    .padding(.horizontal, 11)
                    
                    HStack {
                        Button(
                            action: search,
                            label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor( toSearch.isEmpty ? Color(.yellow): Color("dark-cian"))
                            }
                        )
                        ZStack (alignment: .leading) {
                            if ( toSearch.isEmpty) {
                                Text("Buscar video").foregroundColor(Color( "text-hint"))
                            }
                            TextField ("", text: $toSearch).foregroundColor(.white)
                        }
                    }
                    .padding([.top, .leading, .bottom], 11)
                    .background(Color("blue-gray"))
                    .clipShape(Capsule())
                    
                    
                }
            }.padding(.horizontal, 18)
        }.navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    private func search() {
        print ("El usuario esta buscando \(toSearch)" )
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
