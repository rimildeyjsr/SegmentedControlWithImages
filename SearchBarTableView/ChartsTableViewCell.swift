//
//  ChartsTableViewCell.swift
//  SearchBarTableView
//
//  Created by Rimil Dey on 07/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class ChartsTableViewCell: UITableViewCell {

    // MARK: - when cell loads
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingsLabel: UILabel!
    
}
