//
//  LikeControl2.swift
//  VKapp
//
//  Created by Павел on 17.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class LikeCounterControl: UIControl {
    var counterLabel = UILabel()
    var iconButton: UIButton = {
        let iconButton = UIButton()
        iconButton.setImage(UIImage(systemName: "heart"), for: .normal)
        iconButton.addTarget(self, action: #selector(changeCounter(_:)), for: .touchUpInside)
        return iconButton
    }()
    
    var countOfLikes: Int = 0 {
        didSet{
            counterLabel.text = String(countOfLikes)
        }
    }
    
    var isLiked : Bool = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        counterLabel.backgroundColor = .clear
        setupView()
    }
    
    func configure(count: Int, isLiked : Bool?){
        if let isLiked = isLiked {
            self.isLiked = isLiked
        }
        self.countOfLikes = count
    }
    
    func setupView() {
        backgroundColor = .clear
        iconButton.setImage(UIImage(systemName: isLiked ? "heart.fill": "heart"), for: .normal)
        iconButton.tintColor = isLiked ? .red : .darkGray
        
        
        counterLabel.adjustsFontSizeToFitWidth = true
        counterLabel.minimumScaleFactor = 0.5
        
        
        let stack = UIStackView()
        stack.addArrangedSubview(counterLabel)
        stack.addArrangedSubview(iconButton)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        self.reloadInputViews()
    }
    
    @objc  func changeCounter(_ sender: UIButton) {
        if isLiked {
            countOfLikes -= 1
        } else {
            countOfLikes += 1
        }
        isLiked.toggle()
        iconButton.setImage(UIImage(systemName: isLiked ? "heart.fill": "heart"), for: .normal)
        iconButton.tintColor = isLiked ? .red : .darkGray
        
        
    }
}
