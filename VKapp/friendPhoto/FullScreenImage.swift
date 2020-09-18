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
        bigPhoto.image = photo[startPhoto]
        
    }
    
    @IBAction func gesture(recognizer: UIPanGestureRecognizer) {
        
        let translation = recognizer.translation(in: view)
        let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
        let rotate = CGAffineTransform(rotationAngle: 0)
        let transformation = scale.concatenating(rotate)
        
        switch recognizer.state {
        case .began:
            gestureAnimator.startAnimation()
            gestureAnimator = UIViewPropertyAnimator(duration: 1.5, dampingRatio: 0.8) {
                self.bigPhoto.transform = transformation
                self.bigPhoto.alpha = 0
            }
        case.changed:
            recognizer.view!.center = CGPoint(x:view.center.x + translation.x , y:view.center.y)
            gestureAnimator.fractionComplete = abs(translation.x / 100)
            if translation.y > 100 {
                dismiss(animated: true, completion: nil)
            }
        case.ended:
            gestureAnimator.startAnimation()
            gestureAnimator.addAnimations {
                if translation.x > 0 {
                    if self.startPhoto > 0 {
                        self.startPhoto += 1
                    } else {
                        self.startPhoto = 0
                    }
                } else {
                    if self.startPhoto < self.photo.count - 1 {
                        self.startPhoto += 1
                    } else {
                        self.startPhoto = self.photo.count - 1
                    }
                }
                self.bigPhoto.image = self.photo[self.startPhoto]
                self.bigPhoto.alpha = 1
                self.bigPhoto.transform = .identity
                self.bigPhoto.center = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height / 2)
            }
            gestureAnimator.startAnimation()
        default:
            break
        }
        
    }
}
