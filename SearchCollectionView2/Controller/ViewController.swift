//
//  ViewController.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //Declaration des objects
    
    var presenter:RestaurantsPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Restaurant"
        setup()
        presenter.fill()
        collectionView.reloadData()
       
    }
    
    func setup() {
       // searchBar.placeholder = "Rechercher"
        presenter = RestaurantsPresenter(viewController: self)
        searchBar.delegate = presenter
        collectionView.dataSource = presenter.datasource
        collectionView.delegate = presenter
    }
    

    func reloadViews() {
    collectionView.reloadData()
    }
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning() 
        // Dispose of any resources that can be recreated.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

