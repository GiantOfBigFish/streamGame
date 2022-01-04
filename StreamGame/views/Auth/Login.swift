//
//  Login.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 26/12/21.
//

import SwiftUI

struct Login: View {
    @State var isSession: Bool = true

    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Inicio sesión") {
                    isSession = true;
                    print("login")
                }
                .foregroundColor(isSession ? .white : .gray)
                Spacer()
                Button("Regístrate") {
                    isSession = false;
                }.foregroundColor(isSession ? .gray : .white)
                Spacer()
            }
            Spacer(minLength: 42)
            if (isSession) {
                Sesion()
            } else {
                Register()
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
