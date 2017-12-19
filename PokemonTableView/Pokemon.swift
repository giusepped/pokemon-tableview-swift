//
//  Pokemon.swift
//  PokemonTableView

import Foundation

struct Pokemon {
    
    let name: String
    let type: String
    let imageName: String
    
    static let NameKey = "NameKey"
    static let TypeKey = "TypeKey"
    static let ImageNameKey = "ImageNameKey"
    
    init(dictionary: [String : String]) {
        self.name = dictionary[Pokemon.NameKey]!
        self.type = dictionary[Pokemon.TypeKey]!
        self.imageName = dictionary[Pokemon.ImageNameKey]!
    }
    
}

extension Pokemon {
    
    // static method to get some Pokemon - could be replaced with api call, database etc
    static var pomemons: [Pokemon] {
        
        var pokemonArray = [Pokemon]()
        
        for d in Pokemon.localPokemonData() {
            pokemonArray.append(Pokemon(dictionary: d))
        }
        
        return pokemonArray
    }
    
    static func localPokemonData() -> [[String : String]] {
        return [
            [Pokemon.NameKey : "Pikachu", Pokemon.TypeKey : "electric",  Pokemon.ImageNameKey : "pikachu"],
            [Pokemon.NameKey : "Charmander", Pokemon.TypeKey : "fire",  Pokemon.ImageNameKey : "charmander"],
            [Pokemon.NameKey : "Squirtle", Pokemon.TypeKey : "water",  Pokemon.ImageNameKey : "squirtle"],
            [Pokemon.NameKey : "Bulbasaur", Pokemon.TypeKey : "grass",  Pokemon.ImageNameKey : "bulbasaur"]
        ]
    }
}
