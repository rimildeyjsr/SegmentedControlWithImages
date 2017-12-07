//
//  MainTableViewController.swift
//  SearchBarTableView
//
//  Created by Rimil Dey on 07/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class FeaturedTableViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    // MARK: - collection view data source
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.featuredBanners.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "bannerCell", for: indexPath) as! BannerCollectionViewCell
        cell.imageView.image = UIImage(named: model.featuredBanners[indexPath.row]["image"]!)
        
        return cell
    }
}
