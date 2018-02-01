//
//  CategoryCell.swift
//  Lil-E
//
//  Created by Yosadaq Esparza on 1/31/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
    
}
