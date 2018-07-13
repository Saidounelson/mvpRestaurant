//
//  RestaurantsPresenter.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class RestaurantsPresenter: NSObject,UISearchBarDelegate, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    weak var viewController:ViewController?
    let datasource:RestaurantsDatasource = RestaurantsDatasource()
    
    init(viewController: ViewController?) {
        super.init()
        self.viewController = viewController
        
    }
    
    func fill() {
        datasource.fill()
    }
    
    //UISearchBar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      // print("il n'y a pas de valeur")
      datasource.filter(searchTerm: searchText)
      viewController?.reloadViews()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.resignFirstResponder()
        searchBar.showsCancelButton = false
        datasource.filter(searchTerm: "")
        viewController?.reloadViews()
    }
   
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.showsCancelButton = false
    }
    
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.showsCancelButton = true
    }
 
    //CollectionView
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10.0, left: 15.0, bottom: 10.0, right: 15.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let edgeInserts = self.collectionView(collectionView, layout: collectionViewLayout, insetForSectionAt: indexPath.section)
        
        return  CGSize(width: collectionView.frame.width - edgeInserts.left - edgeInserts.right , height: 90.2)
    }
}
