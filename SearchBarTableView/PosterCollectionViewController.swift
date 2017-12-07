//
//  PosterCollectionViewController.swift
//  SearchBarTableView
//
//  Created by Rimil Dey on 07/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

private let reuseIdentifier = "posterCell"

class PosterCollectionViewController: UICollectionViewController {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
    
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return model.featuredPosters.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PosterCollectionViewCell
    
        cell.imageView.image = UIImage(named: model.featuredPosters[indexPath.row]["image"]!)
        
        cell.titleLabel.text = model.featuredPosters[indexPath.row]["title"]
    
        return cell
    }


}
