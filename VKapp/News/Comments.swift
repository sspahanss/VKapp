//
//  Comments.swift
//  VKapp
//
//  Created by Павел on 04.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class Comments: UIControl {
    let image = UIImageView()
    let count = UILabel()
    let stack = UIStackView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        count.textColor = .lightGray
        count.text = "0"
        image.image = UIImage(systemName: "bubble.left")
        image.tintColor = .lightGray
        
        stack.addArrangedSubview(image)
        stack.addArrangedSubview(count)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.isUserInteractionEnabled = false
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
    }
    
    var counter = 0
    func comment() {
        counter += 1
        count.text = String(counter)
        count.textColor = .blue
        image.tintColor = .blue
    }
}
