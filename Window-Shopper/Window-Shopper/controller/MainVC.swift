//
//  ViewController.swift
//  Window-Shopper
//
//  Created by TheNextG on 11/16/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wagetxt: CurrencyTxtField!
    @IBOutlet weak var pricetxt: CurrencyTxtField!
    @IBOutlet weak var resultlbl: UILabel!
    @IBOutlet weak var hourslbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate),for: .touchUpInside)
        
        wagetxt.inputAccessoryView = calcBtn
        pricetxt.inputAccessoryView = calcBtn
        
        resultlbl.isHidden = true
        hourslbl.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func calculate() {
        if let wageTxt = wagetxt.text, let priceTxt = pricetxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                resultlbl.isHidden = false
                hourslbl.isHidden = false
                resultlbl.text  = "\(Wage.getHours(forWage: wage, andPrice:price))"
            }
        }
    }

    @IBAction func CalculaterBtnPressed(_ sender: Any) {
        resultlbl.isHidden = true
        hourslbl.isHidden  = true
        wagetxt.text = " "
        pricetxt.text = " "
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

