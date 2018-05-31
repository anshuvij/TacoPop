//
//  NibLoadedableView.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

protocol NibLoadableView {
    
}

extension NibLoadableView where Self : UIView
{
    static var nibName : String
    {
        return String(describing: self)
    }
}
