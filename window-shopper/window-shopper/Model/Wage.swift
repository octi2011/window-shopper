//
//  Wage.swift
//  window-shopper
//
//  Created by Octavian on 01/01/2018.
//  Copyright © 2018 Octavian. All rights reserved.
//

import Foundation

class Wage {
    //class functions are like static methods, no need to instantiate
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
