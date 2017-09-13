//
//  InterestCollectionViewController.swift
//  CollectionViewImages
//
//  Created by Cássio Sousa on 10/09/17.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

import Foundation
import UIKit


class InterestViewController: UIViewController {
    @IBOutlet weak var collectionView : UICollectionView!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    var interest = [Interest]()
    
    let cellScaling :CGFloat = 0.6;
    
    override func viewDidLoad() {
        interest = [Interest(title: "Amo Pedalar nas Estradas de Terra",image: "f1",color: UIColor(red: 0/255, green: 151/255, blue: 211/255, alpha: 0.6)/* #0097d3 */),
        Interest(title: "Amo Pedalar nas Estradas de Terra",image: "f2",color: UIColor(red: 245/255, green: 249/255, blue: 0/255, alpha: 0.6) ),
        Interest(title: "Amo Pedalar nas Estradas de Terra",image: "f3",color: UIColor(red: 239/255, green: 91/255, blue: 0/255, alpha: 0.6)) /* #ef5b00 */,
        Interest(title: "Amo Pedalar nas Estradas de Terra",image: "f4",color: UIColor(red: 0/255, green: 178/255, blue: 38/255, alpha: 0.6)) /* #00b226 */]
        
        self.collectionView.dataSource = self;
        self.collectionView.delegate  = self;
        
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHeight = floor(screenSize.height * cellScaling)
        
        let insetX = (view.bounds.width - cellWidth) / 2.0
        let insetY = (view.bounds.height - cellHeight) / 2.0
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView?.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        
        profileImage.layer.cornerRadius = 18
        profileImage.transform = CGAffineTransform.init(rotationAngle: (-60 * .pi / 180.0))
    }
    
    
}

extension InterestViewController: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interest.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCell", for: indexPath) as!  InterestViewCell
        
        cell.interest = interest[indexPath.item];
        
        return cell;
    }
}


//PRAGMA: código para parar no meio da tela

extension InterestViewController: UICollectionViewDelegate, UIScrollViewDelegate{
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpace = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpace
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpace - scrollView.contentInset.left, y: -scrollView.contentInset.top)
        
        targetContentOffset.pointee = offset
    }
}
