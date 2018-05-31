//
//  MainVC.swift
//  TacoPoP
//
//  Created by Anshu Vij on 30/05/18.
//  Copyright © 2018 Anshu Vij. All rights reserved.
//

import UIKit

class MainVC: UIViewController,DataServiceDelegate {

    @IBOutlet weak var headerView : HeaderView!
    @IBOutlet weak var collectionView : UICollectionView!
    
    var da : DataService = DataService.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addDropShadow()
        collectionView.delegate = self
        collectionView.dataSource = self
        da.delegate = self
        da.loadDeliciousTacoData()
        da.tacoArray.shuffle()
//        let nib = UINib(nibName: "TacoCell", bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
        
        collectionView.register(TacoCell.self)
        
        
      
        // Do any additional setup after loading the view.
    }
    func deliciousTacoDataloaded() {
        print("Delicious Taco data Loaded")
        collectionView.reloadData()
    }

   
}
extension MainVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell
//        {
//            cell.configureCell(taco: da.tacoArray[indexPath.row])
//            return cell
//        }
//
//        return UICollectionViewCell()
        
        let cell = collectionView.dequeueReuseableCell(forIndexPath: indexPath) as TacoCell
        cell.configureCell(taco: da.tacoArray[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return da.tacoArray.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell
         {
        cell.shake()
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 95, height: 95)
    }
}






