//
//  MutuableCollection+Ext.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import Foundation
extension MutableCollection where Index == Int
{
    mutating func shuffle()
    {
        if count < 2 {return}
        for i in startIndex ..< endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(endIndex-i))) + i
            guard i != j else {continue}
            self.swapAt(i, j)
        }
    }
}
