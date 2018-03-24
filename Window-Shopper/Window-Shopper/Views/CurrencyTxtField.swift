//
//  CurrencyTxtField.swift
//  Window-Shopper
//
//  Created by TheNextG on 11/16/17.
//  Copyright © 2017 TheNextG. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 29
        let currencylbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size/2, width: size, height: size))
        currencylbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6888204225)
        currencylbl.textAlignment = .center
        currencylbl.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        currencylbl.layer.cornerRadius = 5.0
        currencylbl.clipsToBounds = true
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencylbl.text = formater.currencySymbol
        addSubview(currencylbl)
    }
    override func prepareForInterfaceBuilder() {
        cusomizeview()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        cusomizeview()
    }
    func cusomizeview() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2548415493)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        
        
        if let place = placeholder {
            let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
