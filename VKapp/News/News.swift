//
//  News.swift
//  VKapp
//
//  Created by Павел on 04.09.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct NewsLine {
    let header: String
    let status: String
    let iconName: UIImage
    let mainImage: UIImage
    
}

final class getLine {
    static func myLines () -> [NewsLine] {
        let oneLine = NewsLine(header: "Вот такая новость", status: "новый статус", iconName: UIImage(named: "me")!, mainImage: UIImage(named: "me")!)
        
        let lineTwo = NewsLine(header: "Вот такая новость", status: "новый статус", iconName: UIImage(named: "me")!, mainImage: UIImage(named: "me")!)
        
        
        return [oneLine, lineTwo]
    }
    
}
