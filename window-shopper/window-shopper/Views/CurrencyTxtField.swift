//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Jenna Hakki on 12/13/17.
//  Copyright © 2017 Jenna Hakki. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.9121976495, green: 0.9067750573, blue: 0.9163659215, alpha: 0.8)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current //default bahvior, don't need to do this
        currencyLbl.text = formatter.currencySymbol //grabs symbol, returns to us a string
        addSubview(currencyLbl)
        //adding the label to the textview itself
    }
    
    

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
  
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        clipsToBounds = true
        
        
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }

}
