//
//  VKSession.swift
//  VKapp
//
//  Created by Павел on 24.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import Foundation

class Session {
    
    private init() {}
    
    public static let shared = Session()
    
    var token: String = ""
    var userID: Int = 0
}
