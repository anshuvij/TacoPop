//
//  UIcollectionView+ext.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

extension UICollectionView
{
    func register <T:UICollectionViewCell>(_ : T.Type) where T : ReuseableView, T:NibLoadableView
    {
        let nib = UINib (nibName: T.nibName, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    func dequeueReuseableCell <T: UICollectionViewCell>(forIndexPath indexPath :IndexPath) -> T where T : ReuseableView
    {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else
        {
            fatalError("couldnot dequeue cell:\(T.reuseIdentifier)")
        }
        return cell
    }
}

extension UICollectionViewCell : ReuseableView
{
    
}
