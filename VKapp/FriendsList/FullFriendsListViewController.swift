//
//  FullCityListViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

protocol FriendsHandler: class {
    func friendChosen(friendName: String)
    
}


class FullFriendsListViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    weak var friendHandler: FriendsHandler? = nil
    
    
    
    var friends = [
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
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
}

extension FullFriendsListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "friendsCell") {
            
            let friend = friends[indexPath.row]
            cell.textLabel?.text = friend
            cell.textLabel?.textColor = .systemIndigo
            return cell
        }
        
        fatalError()
    }
}

extension FullFriendsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let friend = friends[indexPath.row]
        friendHandler?.friendChosen(friendName: friend)
        navigationController?.popViewController(animated: true)
        
        
    }
}
