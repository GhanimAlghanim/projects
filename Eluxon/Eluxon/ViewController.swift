//
//  ViewController.swift
//  Eluxon
//
//  Created by TheNextG on 9/14/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOFFLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    var switchstatus: SwitchStatus = .off
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchstatus.Toggle()
        if switchstatus == .off {
            toggleBtn.setImage(UIImage (named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3621281683, green: 0.3621373773, blue: 0.3621324301, alpha: 1)
            onOFFLbl.text = "OFF"
            onOFFLbl.textColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
            
        } else {
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOFFLbl.text = "ON"
            onOFFLbl.textColor = #colorLiteral(red: 0.3621281683, green: 0.3621373773, blue: 0.3621324301, alpha: 1)
        }
    }
  
    
    
}

