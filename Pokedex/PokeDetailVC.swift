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
    var pokemon:Pokemon!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        pokeLabl.text=pokemon.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
