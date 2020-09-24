//
//  CollectionViewCell.swift
//  VKapp
//
//  Created by Павел on 11.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    
   
    @IBOutlet weak var likeControl : LikeCounterControl!
    
   
    func config(imageStat: ImageStat) {
        
        image.image = UIImage(named: imageStat.imageName)
        likeControl.countOfLikes = imageStat.likeCount
      
    }
 
}
