//
//  ViewModel.swift
//  API_Pokemon
//
//  Created by Student15 on 14/04/23.
//

import Foundation

struct NameType : Decodable {
    let name: String
}

struct Types : Decodable {
    let nameType: [NameType]
}

struct StatName : Decodable {
    let name: String
}

struct Stats : Decodable {
    let base_stat: Int
    let stat: [StatName]
}

struct Sprite : Decodable {
    let front_default: URL
}

struct PokeInfo : Decodable {
    let sprites : [Sprite]
    let stats: [Stats]
    let types: [Types]
    let base_experience: Int
}

struct PokeNames : Decodable {
    let name: String
    let url: URL
}


struct Poke : Decodable {
    let results: [PokeNames]
}

class ViewModel : ObservableObject {
    @Published var chars : [PokeNames] = []
    
    func fetch() {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon-species/") else {
            return
        }
    
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
                
            }
            
            do {
                let parsed = try JSONDecoder().decode(Poke.self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed.results
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
