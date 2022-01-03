//
//  ViewModel.swift
//  StreamGame
//
//  Created by Esteban Hernandez on 2/01/22.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var gamesData =  [GameElement] ()
    init () {
        let urlGames = URL(string: "https://gamestream-api.herokuapp.com/api/games")!
        var request = URLRequest(url: urlGames)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { data, response, errMessage in
            do {
                if let jsonData = data {
                    print ("tamaño json \(jsonData)")
                    let decodeData = try
                        JSONDecoder().decode([GameElement].self, from: jsonData )
                    print("JSONDecodificado: \(decodeData)")
                    DispatchQueue.main.async {
                        self.gamesData.append(contentsOf: decodeData)
                        print(" result concat \(self.gamesData)")
                    }
                } else {
                    print("No existen datos en el json recuperado")
                }
            } catch {
                print("Error 1 \(errMessage)")
            }
        }
        
        
    }
}
