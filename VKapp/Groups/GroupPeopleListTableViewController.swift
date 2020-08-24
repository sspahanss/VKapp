//
//  GroupPeopleListTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class GroupPeopleListTableViewController: UITableViewController {
    
    struct person {
        var yearOfBirth: Int
        var gender: String
        var height: Int
        var status: String
        
        init(yearOfBirth: Int, gender: String, height: Int, status: String ) {
            self.yearOfBirth = yearOfBirth
            self.gender = gender
            self.height = height
            self.status = status
        }
    }
    
    var people = [
        "Виктор",
        "Катя",
        "Андрей",
        "Светлана",
        "Леонид",
        "Михаил",
        "Никита",
        "Петр",
        "Василий",
        "Олег",
        "Евгений"
    ]
    
    
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       
    }

    // MARK: - Table view data source

   
  

    
}
