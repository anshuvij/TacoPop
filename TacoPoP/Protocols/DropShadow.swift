//
//  DropShadow.swift
//  TacoPoP
//
//  Created by Anshu Vij on 31/05/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

protocol DropShadow {
    
}

extension DropShadow where Self : UIView
{
    func addDropShadow ()
    {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
}
