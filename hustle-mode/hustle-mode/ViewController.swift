//
//  ViewController.swift
//  hustle-mode
//
//  Created by TheNextG on 8/27/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var darkbluebg: UIImageView!
    @IBOutlet weak var powerbtn: UIButton!
    @IBOutlet weak var cloudholder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustellbl: UILabel!
    @IBOutlet weak var onlbl: UILabel!
    
    
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let path = Bundle.main.path(forResource: "g", ofType: "wav")! you must check the directory for both files has the same path in project menu and the physical file
        let path = Bundle.main.path(forAuxiliaryExecutable: "/Users/thenextg/Desktop/hustle-mode/hustle-mode/g.wav")
        let url = URL(fileURLWithPath: path!)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func powerbtnpressed(_ sender: Any) {
        cloudholder.isHidden = false
        darkbluebg.isHidden = true
        powerbtn.isHidden = true
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 100, width: 375, height: 402)
        }){(finished) in
            self.hustellbl.isHidden = false
            self.onlbl.isHidden = false
        }
    }
}

