//
//  CircleImage.swift
//  VKapp
//
//  Created by Павел on 27.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    override func layoutSubviews() {
        layer.cornerRadius = bounds.height / 2
        layer.shadowOpacity = 1
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 8
        layer.shadowOffset = CGSize.zero
    }
}

class CircleImage: UIImageView {
    override func layoutSubviews() {
        layer.cornerRadius = bounds.height / 2
    }
}
