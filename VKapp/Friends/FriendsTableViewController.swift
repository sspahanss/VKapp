//
//  FavoritesFriendsTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

struct FriendsView {
    let letter: String
    let users: [User]
}

class FriendsTableViewController: UITableViewController, UISearchBarDelegate{
    var friendsList = [
        User(name: "Виктор", iconName: "me", image: ["me", "music"]),
        User(name: "Виталий", iconName: "me", image: ["me"]),
        User(name: "Павел", iconName: "me", image: ["me"]),
        User(name: "Петр", iconName: "me", image: ["me"]),
        User(name: "Галина", iconName: "me", image: ["me"]),
        User(name: "Елена", iconName: "me", image: ["me"]),
        User(name: "Леонид", iconName: "me", image: ["me"]),
        User(name: "Екатерина", iconName: "me", image: ["me"]),
        User(name: "Андрей", iconName: "me", image: ["me"]),
        User(name: "Паша", iconName: "me", image: ["me"]),
        User(name: "Михаил", iconName: "me", image: ["me"]),
        User(name: "Юлия", iconName: "me", image: ["me"]),
    ]
    
    
    var sortedList: [FriendsView] = []
    var searchedNames: [User] = []
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sortedList = map(input: friendsList)
        searchedNames = friendsList
        tableView.register(UINib(nibName: "UserCell", bundle: .none), forCellReuseIdentifier: "FriendCell")
        tableView.register(UINib(nibName: "UserHeader", bundle: .none), forHeaderFooterViewReuseIdentifier: "UserHeader")
        
        searchBar.delegate = self
        
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard let text = searchBar.text else { return }
        
        if text.isEmpty {
            sortedList = map(input: friendsList)
            
        } else {
            sortedList = map(input: friendsList.filter{ (friend) -> Bool in
                return friend.name.contains(text)
            })
        }
        tableView.reloadData()
    }
    
    private func map(input: [User]) -> [FriendsView] {
        let sorted = input.sorted { (u1, u2) -> Bool in
            u1.name < u2.name
        }
        var output: [FriendsView] = []
        var i = 0
        while i < input.count {
            
            let letter = sorted[i].titleFirstLetter
            
            var user: [User] = []
            
            for element in sorted[i...] {
                if element.titleFirstLetter == letter {
                    user.append(element)
                } else {
                    output.append(FriendsView(letter: letter, users: user))
                    break
                }
            }
            i += user.count
            if i == input.count {
                output.append(FriendsView(letter: letter, users: user))
            }
        }
        return output
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sortedList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortedList[section].users.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! UserCell
        let user = sortedList[indexPath.section].users[indexPath.row]
        cell.config(user: user)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let friendCollectionVC = storyboard.instantiateViewController(identifier: "collectionCell") as! FriendsCollectionViewController
        
        let friend = sortedList[indexPath.section].users[indexPath.row]
        friendCollectionVC.friend = friend
        
        navigationController?.pushViewController(friendCollectionVC, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        switch editingStyle {
        case.delete:
            friendsList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        default:
            break
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "UserHeader") as! UserHeader
        let title = sortedList[section].letter
        view.config(title: title)
        return view
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
   
}
