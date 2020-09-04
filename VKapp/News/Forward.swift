//
//  Forward.swift
//  VKapp
//
//  Created by Павел on 04.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class Forward: UIControl {
    let forward = UIImageView()
    let count = UILabel()
    let stack = UIStackView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        count.textColor = .lightGray
        count.text = ""
        forward.image = UIImage(systemName: "arrowshape.turn.up.right")
        forward.tintColor = .lightGray
        
        stack.addArrangedSubview(forward)
        stack.addArrangedSubview(count)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.isUserInteractionEnabled = false
        addSubview(forward)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
