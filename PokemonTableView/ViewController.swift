//
//  ViewController.swift
//  PokemonTableView

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let pokemons = Pokemon.pomemons
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell")!
        let pokemon = pokemons[indexPath.row]
        
        cell.textLabel?.text = pokemon.name
        cell.imageView?.image = UIImage(named: pokemon.imageName)
        
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Type : \(pokemon.type)"
        }
        
        return cell
    }
    
}

