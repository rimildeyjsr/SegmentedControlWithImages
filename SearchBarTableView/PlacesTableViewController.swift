//
//  PlacesTableViewController.swift
//  SearchBarTableView
//
//  Created by Rimil Dey on 07/12/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class PlacesTableViewController: UITableViewController, UISearchResultsUpdating {

    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSearchBar()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.isActive == true {
            return searchResults.count
        } else {
            return model.featuredPosters.count
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "placesCell", for: indexPath)
        
        if searchController.isActive == true {
            cell.textLabel?.text = searchResults[indexPath.row]["description"] as? String
        } else {
            cell.textLabel?.text = model.featuredPosters[indexPath.row]["description"]
        }
        
        
        return cell
    }
    
    // MARK: - search controller
    let searchController = UISearchController(searchResultsController: nil)
    var searchResults = [AnyObject]()
    
    // MARK: UISearchResultsUpdating protocol
    func loadSearchBar() {
        searchController.searchResultsUpdater = self
        tableView.tableHeaderView = searchController.searchBar
        self.definesPresentationContext = false
        searchController.dimsBackgroundDuringPresentation = false
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let predicate = NSPredicate(format: "description contains[cd] %@", searchController.searchBar.text!)
        let filteredResults = (model.featuredPosters as NSArray).filtered(using: predicate)
        
        searchResults = filteredResults as [AnyObject]
        tableView.reloadData()
    }

    
}
