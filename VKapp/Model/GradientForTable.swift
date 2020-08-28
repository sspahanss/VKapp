//
//  GradientForTable.swift
//  VKapp
//
//  Created by Павел on 27.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit
final class UpdatedTableViewController: UITableView {
    
    var rootLayer: CAGradientLayer {return layer as! CAGradientLayer}
      override class var layerClass: AnyClass {
          return CAGradientLayer.self
     }
    override func awakeFromNib() {
        super.awakeFromNib()
        rootLayer.colors = [UIColor.blue.withAlphaComponent(0.5).cgColor, UIColor.white.cgColor]
        rootLayer.locations = [0, 1]
        rootLayer.startPoint = CGPoint.zero
        rootLayer.endPoint = CGPoint(x: 1, y: 0)
    }
}
