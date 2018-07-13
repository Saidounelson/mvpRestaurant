//
//  RestaurantsCell.swift
//  SearchCollectionView2
//
//  Created by mac on 14/06/2018.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class RestaurantsCell: UICollectionViewCell {
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet weak var titleLabel:UILabel!
    @IBOutlet weak var adresseLabel:UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
     
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 4.0
        titleLabel.textColor =  UIColor(red: 43.0/255.0, green: 58.0/255.0, blue: 66.0/255.0, alpha: 1.0)
        adresseLabel.textColor =  UIColor(red: 63.0/255.0, green: 87.0/255.0, blue: 66.0/255.0, alpha: 1.0)
    }
    
    func fill(with restaurant:Restaurant)  {
        titleLabel.text = restaurant.title
        adresseLabel.text = restaurant.adresse
        imageView.image = restaurant.image
    }
}
