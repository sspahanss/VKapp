//
//  UserHeader.swift
//  VKapp
//
//  Created by Павел on 03.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class UserHeader: UITableViewHeaderFooterView {

    @IBOutlet weak var titleLable: UILabel!

    func config(title: String) {
        titleLable.text = title
    }
    
}
