//
//  FriendsCollectionCollectionViewController.swift
//  VKapp
//
//  Created by Павел on 24.08.2020.
//  Copyright © 2020 Павел. All rights reserved.
//

import UIKit

private let reuseIdentifier = "FriendCell"

class FriendsCollectionViewController: UICollectionViewController {
    
    var friend: User!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
   

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return friend.image.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        let photos = friend.image[indexPath.row]
        cell.image.image = photos
        

        return cell
    }

}
