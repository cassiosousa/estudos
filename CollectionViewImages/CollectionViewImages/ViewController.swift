//
//  ViewController.swift
//  CollectionViewImages
//
//  Created by Cássio Sousa on 10/09/17.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

import UIKit

struct Interest{
    var title : String
    var image : String
    var color : UIColor
    
    init(title: String, image: String, color: UIColor) {
        self.title = title
        self.image = image
        self.color = color
    }
}

class ViewController: UIViewController {

    /*
    var reusableIdentifier:String = "cellImages"
    
    var images : [ImagesDescription]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.collectionView.register(ImagesCell.self,reusableIdentifier);
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count;
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reusableIdentifier, for: indexPath) as! ImagesCell
        
        
        return cell;
    }

*/

}

