//
//  Pokemon.swift
//  Pokedex
//
//  Created by shaik mulla syed on 9/6/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import Foundation

class Pokemon{
    private var _name:String!
    private var _pokemonId:Int!
    
    var name:String{
        return _name
    }
    
    var pokemonId:Int{
        return _pokemonId
    }
    
    init(name:String, pokemonId:Int) {
        self._name=name
        self._pokemonId=pokemonId
    }
}
