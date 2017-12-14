//
//  Wage.swift
//  window-shopper
//
//  Created by Jenna Hakki on 12/13/17.
//  Copyright © 2017 Jenna Hakki. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}




