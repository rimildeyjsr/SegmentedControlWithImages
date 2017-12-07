//
//  MainViewController.swift
//  SearchBarTableView
//
//  Created by Rimil Dey on 07/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        chartsView.isHidden = true
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var featuredView: UIView!
    @IBOutlet weak var chartsView: UIView!
    
    
    
    
    
    // MARK: - interactions
    
    @IBAction func tapSegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            featuredView.isHidden = false
            chartsView.isHidden = true
        } else {
            featuredView.isHidden = true
            chartsView.isHidden = false
        }
    }
    
}
