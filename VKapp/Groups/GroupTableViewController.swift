//
//  GroupTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    var groups: [String] = [
        "Work",
        "Family"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //tableView.dataSource = self
        // tableView.delegate = self
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath)
        let group = groups[indexPath.row]
        cell.textLabel?.text = group
        
        return cell
    }
    
    
    @IBAction func group(sender: Any){
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let groupListVC = storyboard.instantiateViewController(identifier: "GroupPeopleListTableViewControllerID") as! GroupPeopleListTableViewController
        
        
        
        navigationController?.pushViewController(groupListVC, animated: true)
    }
    
}
