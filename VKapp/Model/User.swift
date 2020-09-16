//
//  User.swift
//  VKapp
//
//  Created by Павел on 28.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class User {
    let name: String
    let iconName: String
    let image: [String]
    
    var titleFirstLetter: String {
        return String(name.first!)
    }
    init(name: String, iconName: String, image: [String]) {
        self.name = name
        self.iconName = iconName
        self.image = image
    }
    
}
