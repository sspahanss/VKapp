//
//  NewsCell.swift
//  VKapp
//
//  Created by Павел on 04.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var avatarView: UIView!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var likes: NewsLikeControl!
    
    @IBOutlet weak var forward: Forward!
    
    @IBOutlet weak var comments: Comments!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
   
    func config(lines: NewsLine) {
        title.text = lines.header
        title.textColor = .systemIndigo
        avatarImage.image = lines.iconName
        status.text = lines.status
        status.textColor = .systemIndigo
        mainImage.image = lines.mainImage
        
    }
}
