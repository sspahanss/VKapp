//
//  NewsLike.swift
//  VKapp
//
//  Created by Павел on 04.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class NewsLikeControl: UIControl {
    let likeHeart = UIImageView()
    let count = UILabel()
    let stack = UIStackView()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        count.textColor = .lightGray
        count.text = "0"
        likeHeart.image = UIImage(systemName: "heart")
        likeHeart.tintColor = .lightGray
        stack.addArrangedSubview(likeHeart)
        stack.addArrangedSubview(count)
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.isUserInteractionEnabled = false
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if count.text == "0" {
            count.text = "1"
            likeHeart.image = UIImage(systemName: "heart.fill")
            count.textColor = .red
            likeHeart.tintColor = .red
        } else {
            count.text = "0"
            likeHeart.image = UIImage(systemName: "heart")
            count.textColor = .lightGray
            likeHeart.tintColor = .lightGray
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
          let animation = CASpringAnimation(keyPath: "transform.scale")
          animation.fromValue = 0.7
          animation.toValue = 1
          animation.stiffness = 200
          animation.mass = 2
          animation.duration = 2
          animation.beginTime = CACurrentMediaTime()
          animation.fillMode = CAMediaTimingFillMode.backwards
          self.likeHeart.layer.add(animation, forKey: nil)
          self.count.layer.add(animation, forKey: nil)
      }
    
}
