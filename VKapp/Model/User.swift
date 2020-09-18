//
//  User.swift
//  VKapp
//
//  Created by Павел on 28.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct ImageStat {
    var imageName: String
    var likeCount: Int
}

class User {
    let name: String
    let iconName: String
    let image: [ImageStat]
    
    var titleFirstLetter: String {
        return String(name.first!)
    }
    init(name: String, iconName: String, image: [ImageStat]) {
        self.name = name
        self.iconName = iconName
        self.image = image
    }
    
}
