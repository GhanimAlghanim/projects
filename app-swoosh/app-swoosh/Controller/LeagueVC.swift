//
//  LeagueVCViewController.swift
//  app-swoosh
//
//  Created by TheNextG on 11/15/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    @IBOutlet weak var NextBTN: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        slectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        slectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        slectLeague(leagueType: "coed")
    }
    
    func slectLeague(leagueType: String){
        player.desiredLeague = leagueType
        NextBTN.isEnabled = true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
        
        
    }

    
    
    
    
}
