//
//  ImagesCell.swift
//  CollectionViewImages
//
//  Created by Cássio Sousa on 10/09/17.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

import Foundation
import UIKit

class InterestViewCell: UICollectionViewCell{
    
    @IBOutlet weak var featureImageview : UIImageView!
    @IBOutlet weak var interestTitleLabel : UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var interest: Interest? {
        didSet{
            self.updateUI();
        }
    }
    
    private func updateUI(){
        if let interest = interest {
            featureImageview.image = UIImage(named:interest.image)
            interestTitleLabel.text = interest.title
            backgroundColorView.backgroundColor = interest.color
        }else{
            featureImageview.image = nil;
            interestTitleLabel.text = nil;
            backgroundColorView.backgroundColor = nil;
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        self.layer.cornerRadius = 3.0
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
        
    }
    
}
