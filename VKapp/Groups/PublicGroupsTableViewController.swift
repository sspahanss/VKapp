//
//  PublicGroupsTableViewController.swift
//  VKapp
//
//  Created by Павел on 28.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

//protocol GroupsHandler: class {
//    func groupChosen(groupName: )
//}

class PublicGroupsTableViewController: UITableViewController {

    
    
    
    //weak var groupHandler: GroupsHandler? = nil
    
    
    var publicGroups = [
      Group(name: "Cars", icon: UIImage(named: "cars")!),
      Group(name: "Music", icon: UIImage(named: "music")!)
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
          return publicGroups.count
      }
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "PublicGroupCell", for: indexPath) as! GroupTableCell
          let group = publicGroups[indexPath.row]
          cell.publicGroupName.text = group.name
          cell.publicGroupImage.image = group.icon
          cell.publicGroupName.textColor = .blue
          return cell
      }
    
}

//extension PublicGroupsTableViewController: UITableViewDelegate {
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let group = publicGroups[indexPath.row]
//        groupHandler?.groupChosen(groupName: Group.self)
//        navigationController?.popViewController(animated: true)
//    }
//}
