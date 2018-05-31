//
//  Shakeable.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

protocol Shakeable {}
extension Shakeable where Self : UIView {
    func shake ()
    
    {
        let anim = CABasicAnimation(keyPath : "position")
        anim.duration = 0.05
        anim.repeatCount = 5
        anim.autoreverses = true
        anim.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4.0, y: self.center.y))
        anim.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4.0, y: self.center.y))
        layer.add(anim, forKey: "position")
    }
}
