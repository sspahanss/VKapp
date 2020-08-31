//
//  GroupPeopleListTableViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class GroupListTableViewController: UITableViewController {
    
   
    var groups = [
    Group(name: "Cars", icon: UIImage(named: "cars")!)
    ]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       
    }

  

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableCell
        let group = groups[indexPath.row]
        cell.groupName.text = group.name
        cell.groupImage.image = group.icon
        cell.groupName.textColor = .blue
        return cell
    }
    
    @IBAction func publicGroups(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let publicGroupListVC = storyboard.instantiateViewController(identifier: "PublicGroups") as! PublicGroupsTableViewController
        navigationController?.pushViewController(publicGroupListVC, animated: true)
        
    }
    
   
    
}



