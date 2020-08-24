//
//  FavoritesFriendsTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class FavoritesFriendsTableViewController: UITableViewController {
    
    var favoriteFriends: [String] = []
    
    
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return favoriteFriends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteFriendCell", for: indexPath)
        let friend = favoriteFriends[indexPath.row]
        cell.textLabel?.text = friend
        
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
            favoriteFriends.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
        
    }
    
    
    @IBAction func addFriend(sender: Any){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let fullFriendsListVC = storyboard.instantiateViewController(identifier: "FullFriendsListViewControllerID") as! FullFriendsListViewController
        
        fullFriendsListVC.friendHandler = self
        
        navigationController?.pushViewController(fullFriendsListVC, animated: true)
    }
}

extension FavoritesFriendsTableViewController: FriendsHandler {
    func friendChosen(friendName: String) {
        favoriteFriends.append(friendName)
        tableView.reloadData()
    }
    
    
}
