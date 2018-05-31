//
//  ReuseableView.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

protocol ReuseableView {
    
}
extension ReuseableView where Self : UIView
{
    static var reuseIdentifier : String
    {
        return String(describing: self)
    }
}

