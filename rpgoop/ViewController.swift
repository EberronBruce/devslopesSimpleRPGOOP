//
//  ViewController.swift
//  rpgoop
//
//  Created by Bruce Burgess on 3/20/16.
//  Copyright © 2016 Red Raven Computing Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: NSLayoutConstraint!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "DirtyLaundry21", hp: 110, attackPwr: 20)
        
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attackPwr:  12)
        } else {
            enemy = DevilWizard(startingHp: 50, attackPwr: 15)
        }
           
        
        
    }


    @IBAction func onChestTapped(sender: AnyObject) {
        
    }

    @IBAction func attackTapped(sender: AnyObject) {
        
        
    }
}









