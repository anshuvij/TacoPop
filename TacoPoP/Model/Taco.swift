//
//  Taco.swift
//  TacoPoP
//
//  Created by Anshu Vij on 31/05/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import Foundation
enum TacoShell : Int
{
     case Flour = 1
    case Corn = 2
    
}
enum TacoProtein : String
{
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}
enum TacoCondiment : Int
{
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _id : Int!
    private var _productName : String!
    private var _shellId : TacoShell!
    private var _condimentId : TacoCondiment!
    private var _proteinId : TacoProtein!
}


