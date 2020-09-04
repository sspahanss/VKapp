//
//  UserCell.swift
//  VKapp
//
//  Created by Павел on 28.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    
    func config(user: User) {
        userName.text = user.name
        userImage.image = UIImage(named: user.iconName)!
        userName.textColor = .systemIndigo
    }
    
}

