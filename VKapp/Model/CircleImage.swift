//
//  CircleImage.swift
//  VKapp
//
//  Created by Павел on 27.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit
 @IBDesignable
class CircleView: UIControl {
    
    @IBInspectable
    var shadowColor: UIColor {
        get { return UIColor (cgColor: layer.shadowColor!) }
        set { layer.shadowColor = newValue.cgColor
            setNeedsDisplay() }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get { return layer.shadowOpacity }
        set { layer.shadowOpacity = newValue
            setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue
            setNeedsDisplay()
        }
    }
    
    override func layoutSubviews() {
        layer.cornerRadius = bounds.height / 2
        layer.shadowOffset = CGSize(width: 3, height: 2)
    }
    
    func animatedButton(_ view: UIView) {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0.7
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 2
        animation.beginTime = CACurrentMediaTime()
        animation.fillMode = CAMediaTimingFillMode.backwards
        view.layer.add(animation, forKey: nil)
    }
    
}

class CircleImage: UIImageView {
    override func layoutSubviews() {
        super.awakeFromNib()
        layer.cornerRadius = bounds.height / 2
    }
}
