//
//  FullScreenImage.swift
//  VKapp
//
//  Created by Павел on 31.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class FullScreenImageController: UIViewController {
    
    @IBOutlet weak var bigPhoto: UIImageView!
    
    var startPhoto: Int!
    var photo: [UIImage]! 
    var gestureAnimator = UIViewPropertyAnimator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func gesture(recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: self.view)
        let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
        let rotate = CGAffineTransform(rotationAngle: 0)
        let transformation = scale.concatenating(rotate)
        
        
        
    }
}
