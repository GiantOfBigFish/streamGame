    //
    //  Register.swift
    //  StreamGame
    //
    //  Created by Esteban Hernandez on 26/12/21.
    //

import SwiftUI

struct Register: View {
    @State var mail:String = ""
    @State var password:String = ""
    @State var passwordAgain:String = ""
    @State private var isSecured: Bool = true
    @State private var isSecuredAgain: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("Elije una foto de perfil")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Puedes cambiar o elegirla más adelante")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.bottom)
                Button(action: {takePicture()}, label: {
                    ZStack {
                        Image("pp")
                            .resizable()
                            .frame(width: 80, height: 90, alignment: Alignment.center)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }
                })
            }
            
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
                //password
                Group {
                    Text("Constraseña")
                        .foregroundColor(Color("dark-cian"))
                    ZStack (alignment: .leading) {
                        if (password.isEmpty) {
                            Text(verbatim: "Contraseña")
                                .font(.caption)
                                .foregroundColor(Color("light-gray"))
                        }
                        HStack {
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
                }
                //confirm password
                Group {
                    Text("Confirmar Contraseña")
                        .foregroundColor(Color("dark-cian"))
                    ZStack (alignment: .leading) {
                        if (passwordAgain.isEmpty) {
                            Text(verbatim: "Confirmar contraseña")
                                .font(.caption)
                                .foregroundColor(Color("light-gray"))
                                .frame(minWidth: 0,
                                       maxWidth: .infinity,
                                       minHeight: 0,
                                       maxHeight: .infinity,
                                       alignment: .leading)
                        }
                        HStack {
                            if isSecuredAgain {
                                SecureField("", text: $passwordAgain)
                                    .foregroundColor(.white)
                            } else {
                                TextField("", text: $passwordAgain)
                                    .foregroundColor(.white)
                            }
                            Button(action: {
                                isSecuredAgain.toggle()
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
                }
                
                Button (action: createAccount, label: {
                    Text ("Registrate")
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
                    
                    
                }).padding(.top,20)
                
                Text("Registrarse con redes sociales")
                    .foregroundColor(.white)
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity,
                           alignment: .center)
                   
                
                
                HStack {
                    Spacer()
                    Button(action: {createFB()}, label: {
                        Text("Facebook")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                            .frame(minWidth: 130, minHeight: 40)
                            .background(  RoundedRectangle(cornerRadius: 10) )
                            .foregroundColor(Color("blue-gray"))
                        
                    })
                    Button(action: {createTw()}, label: {
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
    }
}
private func takePicture () {
    print ("fotoooo")
}
private func createAccount() {
    print ("credate account")
}

private func createFB() {
    print ("credate account")
}
private func createTw() {
    print ("credate account")
}
struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
