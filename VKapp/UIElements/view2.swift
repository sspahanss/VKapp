//
//  view2.swift
//  VKapp
//
//  Created by Павел on 17.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit
final class UpdatedViewController: UIView {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var vkImage: UIImageView!
    @IBOutlet weak var regButton: UIButton!
    @IBOutlet weak var fbButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    
    var rootLayer: CAGradientLayer {return layer as! CAGradientLayer}
      override class var layerClass: AnyClass {
          return CAGradientLayer.self
     }
    override func awakeFromNib() {
        super.awakeFromNib()
        rootLayer.colors = [UIColor.purple.withAlphaComponent(0.6).cgColor, UIColor.white.cgColor]
        rootLayer.locations = [0, 1]
        rootLayer.startPoint = CGPoint.zero
        rootLayer.endPoint = CGPoint(x: 0, y: 1)
    }
}
