//
//  FavoritesFriendsTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController, UISearchBarDelegate{
    var friends = [
    User(name: "Виктор", icon: UIImage(named: "me")!),
    User(name: "Павел", icon: UIImage(named: "me")!),
    User(name: "Екатерина", icon: UIImage(named: "me")!),
    User(name: "Андрей", icon: UIImage(named: "me")!),
    User(name: "Михаил", icon: UIImage(named: "me")!),
    ]
    

   @IBOutlet weak var searchBar: UISearchBar!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! UserCell
          let user = friends[indexPath.row]
          cell.userName.text = user.name
          cell.userImage.image = user.icon
          cell.userName.textColor = .blue
          return cell
      }
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let friendCollectionVC = storyboard.instantiateViewController(identifier: "collectionCell") as! FriendsCollectionCollectionViewController
        
        
        navigationController?.pushViewController(friendCollectionVC, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        switch editingStyle {
        case.delete:
            friends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
        
    }
    
}
