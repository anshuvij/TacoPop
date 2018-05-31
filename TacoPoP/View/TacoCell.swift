//
//  TacoCell.swift
//  TacoPoP
//
//  Created by Anshu Vij on 01/06/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell,NibLoadableView,Shakeable {

    @IBOutlet weak var tacoImage : UIImageView!
    @IBOutlet weak var tacoLabel : UILabel!
    
    var taco : Taco!
    
    func configureCell (taco : Taco)
    {
        self.taco = taco
        tacoImage.image = UIImage(named : taco.proteinId.rawValue)
        tacoLabel.text = taco.productName
    }

}
