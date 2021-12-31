//
//  Sesion.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 26/12/21.
//

import SwiftUI

struct Sesion: View {
    @State var mail:String = ""
    @State var password:String = ""
    @State private var isSecured: Bool = true
    @State private var isHomeActive: Bool = false
    var body: some View {
        ScrollView {
            VStack(alignment: .leading ) {
                Text("Correo Electrónico")
                    .foregroundColor(Color("dark-cian"))
                ZStack (alignment: .leading) {
                    if (mail.isEmpty) {
                        Text(verbatim: "ejemplo@gmail.com")
                            .font(.caption)
                            .foregroundColor(Color("light-gray"))
                    }
                    TextField("", text: $mail)
                        .foregroundColor(.white)
                }
                Divider()
                    .frame(height: 1)
                    .background(Color("dark-cian"))
                    .padding(.bottom)
                Text("Constraseña")
                    .foregroundColor(Color("dark-cian"))
                ZStack (alignment: .leading) {
                   
                    HStack {
                        if (password.isEmpty) {
                            Text(verbatim: "Contraseña")
                                .font(.caption)
                                .foregroundColor(Color("light-gray"))
                        }
                        
                        if isSecured {
                            SecureField("", text: $password)
                                .foregroundColor(.white)
                        } else {
                            TextField("", text: $password)
                                .foregroundColor(.white)
                        }
                        Button(action: {
                            isSecured.toggle()
                        }) {
                            Image(systemName: self.isSecured ? "eye.slash" : "eye")
                                .accentColor(Color("dark-cian"))
                        }
                    }
                   
                }
                Divider()
                    .frame(height: 1)
                    .background(Color("dark-cian"))
                    .padding(.bottom)
                Button {
                    print ("xdd lol constraseña")
                } label: {
                    Text("¿Olvidaste tu constraña?")
                        .font(.footnote)
                        .foregroundColor(Color("dark-cian"))
                        .frame(width: 300, alignment: .trailing)
                }.padding(.bottom)
                
                Button (action: {isHomeActive = true}, label: {
                    Text ("INICIA SESIÓN")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(
                            top: 11,
                            leading: 18,
                            bottom: 11,
                            trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color("dark-cian"), lineWidth: 1)
                                    .shadow(color: .white, radius: 6))
                        
                    
                }).padding(.top,30)

                Text("Inicia sesión con redes sociales")
                    .foregroundColor(.white)
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity,
                           alignment: .center)
                    .padding(.top,75)
                 
                
                HStack {
                    Spacer()
                    Button(action: {logginFb()}, label: {
                        Text("Facebook")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(minWidth: 130, minHeight: 40)
                            .background(  RoundedRectangle(cornerRadius: 10) )
                            .foregroundColor(Color("blue-gray"))
                           
                    })
                    Button(action: {logginTw()}, label: {
                        Text("Twitter")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(minWidth: 130, minHeight: 40)
                            .background(  RoundedRectangle(cornerRadius: 10) )
                            .foregroundColor(Color("blue-gray"))
                            
                    })
                        
                    
                    Spacer()
                }.padding(.top)

            
            }.padding(.horizontal, 77)
        }.background(Color("marine"))
        NavigationLink (
            destination: Home(),
            isActive: $isHomeActive,
            label: {EmptyView()}
        )
    }
}

private func logginFb() {
    print("login fb")
}
private func logginTw() {
    print("login tw")
}

struct Sesion_Previews: PreviewProvider {
    static var previews: some View {
        Sesion()
    }
}
