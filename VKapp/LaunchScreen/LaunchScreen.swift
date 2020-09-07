//
//  LaunchScreen.swift
//  VKapp
//
//  Created by Павел on 07.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class ViewControllerLaunch: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animateKeyframes(withDuration: 3, delay: 0, options: .repeat, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1, animations: {
                self.view1.backgroundColor = .lightGray
            })
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 1, animations: {
                self.view2.backgroundColor = .lightGray
            })
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 1, animations: {
                self.view3.backgroundColor = .lightGray
            })
            
        }, completion: nil)
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 6, execute: {
            self.performSegue(withIdentifier: "Next", sender: self)
        })
    }
    
}
