//
//  RestaurantsDatasource.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class RestaurantsDatasource: NSObject, UICollectionViewDataSource {
    
   private var filteredObjects:[Restaurant] = []
   private  var objects:[Restaurant] = []
   private var isFiltering:Bool = false
    
    let cell = "cell"
    
    func fill() {
        objects = [Restaurant(title: "Italian love", adresse: " 8911 Toy Station Suite 899", image: UIImage(named: "2.jpg")!),
                   Restaurant(title: "Le Regal", adresse: "Ouakam", image: UIImage(named: "1.jpg")!),
                   Restaurant(title: "Kebab", adresse: "Almadie", image: UIImage(named: "3.jpg")!),
                   Restaurant(title: "Brioche", adresse: "Sacre coeur", image: UIImage(named: "3.jpg")!),
                   Restaurant(title: "Chez medi", adresse: "Ouakam", image: UIImage(named: "1.jpg")!),
                   Restaurant(title: "Radisson", adresse: "Ouakam", image: UIImage(named: "2.jpg")!),
                   Restaurant(title: "Kebab", adresse: "Almadie", image: UIImage(named: "3.jpg")!),
                   Restaurant(title: "Brioche", adresse: "Sacre coeur", image: UIImage(named: "1.jpg")!),
                   Restaurant(title: "Chez medi", adresse: "Ouakam", image: UIImage(named: "1.jpg")!),
                   Restaurant(title: "Le Regal", adresse: "Ouakam", image: UIImage(named: "2.jpg")!),
                   Restaurant(title: "Kebab", adresse: "Almadie", image: UIImage(named: "3.jpg")!),
                   Restaurant(title: "Brioche", adresse: "Sacre coeur", image: UIImage(named: "1.jpg")!),
                   Restaurant(title: "Chez medi", adresse: "Ouakam", image: UIImage(named: "2.jpg")!)
        ]
    }
    func filter(searchTerm:String)  {
      
        if searchTerm.isEmpty {
            isFiltering = false
            filteredObjects.removeAll()
        }else{
            isFiltering = true
            
            filteredObjects  = objects.filter({
                return $0.title.localizedCaseInsensitiveContains(searchTerm)
            })
        }
    }
    
    func object(at indexPath: IndexPath) -> Restaurant {
        if isFiltering {
            return filteredObjects[indexPath.item]
        }else{
            return objects[indexPath.item]
        }
    }
  
    //Nombre de line
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if isFiltering {
            return filteredObjects.count
        }else{
            return objects.count
        }
   
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cell, for: indexPath) as? RestaurantsCell {
           let restaurant =  object(at: indexPath)
            cell.fill(with: restaurant)
             return cell
        }
        return UICollectionViewCell()
    }
    
}
