//
//  ViewModel.swift
//  API_Pokemon
//
//  Created by Student15 on 14/04/23.
//

import Foundation

struct Carros : Decodable {
    let Modelo: String
    let Ano: Int
    let Cor: String
    let Preco: Double
}

struct Estacionamento : Decodable {
    let _id: String
    let NomeEstacionamento: String
    let Endereco: String
    let Vagas: Int
    let Carros: [Carros]
}

class ViewModel : ObservableObject {
    @Published var chars : [Estacionamento] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/jmget") else {
            return
        }
    
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
                
            }
            
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

