//
//  PokeCell.swift
//  Pokedex
//
//  Created by shaik mulla syed on 9/6/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var pokemon:Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        //setting corner radius to collection view cell
        self.layer.cornerRadius=5.0
    }
    
    func UpdateUI(pokemon:Pokemon){
        self.pokemon=pokemon
        thumbImg.image=UIImage(named: "\(pokemon.pokemonId)")
        nameLabel.text=pokemon.name
        
    }
}
