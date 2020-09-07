//
//  User.swift
//  VKapp
//
//  Created by Павел on 28.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct User {
    let name: String
    let iconName: String
    var titleFirstLetter: String {
        return String(name.first!)
    }
}
