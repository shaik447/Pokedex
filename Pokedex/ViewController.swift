//
//  ViewController.swift
//  Pokedex
//
//  Created by shaik mulla syed on 9/6/1438 AH.
//  Copyright © 1438 shaik mulla syed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView:UICollectionView!
    @IBOutlet weak var musicBtn:UIButton!
    
    var musicPlayer:AVAudioPlayer! = nil

    var pokemons=[Pokemon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource=self
        collectionView.delegate=self
        ParseCSV()
        initAudio()
    }
    
    func initAudio(){
        let path=Bundle.main.path(forResource: "music", ofType: "mp3")
        do {
            musicPlayer=try AVAudioPlayer(contentsOf: URL(string: path!)!)
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        
    }
    
    func ParseCSV(){
        let path=Bundle.main.path(forResource: "pokemon", ofType: "csv")
        do {
            let csv=try CSV(contentsOfURL: path!)
            let rows=csv.rows
            for row in rows{
                let pokeid=row["id"]
                let pokename=row["identifier"]
                let poke=Pokemon(name: pokename!, pokemonId: Int(pokeid!)!)
                pokemons.append(poke)
            }
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "PokeCell", for: indexPath) as? PokeCell{
            let pokemon=pokemons[indexPath.row]
            cell.UpdateUI(pokemon: pokemon)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 104, height: 104)
    }
    
    
    @IBAction func musicBtnPressed(_ sender: UIButton) {
        if musicPlayer.isPlaying{
            musicPlayer.pause()
            sender.alpha=0.2
        }else{
            musicPlayer.play()
            sender.alpha=1.0
        }
        
    }
    
    


}

