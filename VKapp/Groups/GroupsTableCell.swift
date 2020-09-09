//
//  GroupsCell.swift
//  VKapp
//
//  Created by Павел on 27.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

class GroupTableCell: UITableViewCell {
    
    @IBOutlet weak var groupName: UILabel!
   @IBOutlet weak var groupImage: UIImageView!
    @IBOutlet weak var publicGroupName: UILabel!
    @IBOutlet weak var publicGroupImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
}
    
    @IBOutlet weak var groupAvatar: CircleView!
    
    @IBAction override func increaseSize(_ sender: Any?) {
        groupAvatar.animatedButton(groupAvatar)
    }
    
}
