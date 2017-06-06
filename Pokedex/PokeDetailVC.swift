//
//  PokeDetailVC.swift
//  Pokedex
//
//  Created by shaik mulla syed on 9/9/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import UIKit

class PokeDetailVC: UIViewController {
    
    @IBOutlet weak var pokeLabl:UILabel!
    @IBOutlet weak var headerView:UIView!
    
    var pokemon:Pokemon!
    
    var pokeImage:UIImageView={
        let uiimageview=UIImageView()
        uiimageview.backgroundColor = .red
        uiimageview.translatesAutoresizingMaskIntoConstraints=false
        return uiimageview
    }()
    
    var descLabel:UILabel={
        let uilabel=UILabel()
        uilabel.lineBreakMode = .byWordWrapping
        uilabel.backgroundColor = .blue
        uilabel.translatesAutoresizingMaskIntoConstraints=false
        return uilabel
    }()
    
    var leftStackview: UIStackView={
        let leftstackview=UIStackView()
        leftstackview.alignment=UIStackViewAlignment.fill
        leftstackview.axis = .vertical
        leftstackview.distribution=UIStackViewDistribution.fillProportionally
        leftstackview.backgroundColor = .yellow
        leftstackview.translatesAutoresizingMaskIntoConstraints=false
        return leftstackview
    }()
    
    var typeLabel:UILabel={
        let uilabel=UILabel()
        uilabel.text="Type:"
        uilabel.font=UIFont(name: "Avenir", size: 13)
        uilabel.textColor = .red
        uilabel.backgroundColor = .blue
        uilabel.translatesAutoresizingMaskIntoConstraints=false
        return uilabel
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        pokeLabl.text=pokemon.name
        view.addSubview(pokeImage)
        pokeImage.image=UIImage(named: "\(pokemon.pokemonId)")
        pokeImage.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10).isActive = true
        pokeImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        pokeImage.heightAnchor.constraint(equalToConstant: 110).isActive = true
        pokeImage.widthAnchor.constraint(equalToConstant: 110).isActive = true
        
        view.addSubview(descLabel)
        descLabel.leftAnchor.constraint(equalTo: pokeImage.rightAnchor, constant: 8).isActive=true
        descLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
        descLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 10).isActive=true
        descLabel.heightAnchor.constraint(equalToConstant: 110).isActive=true
        
        
    }

    
    

    
}
