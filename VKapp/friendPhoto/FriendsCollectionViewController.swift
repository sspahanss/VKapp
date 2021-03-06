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
    
    var friend: User?

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return friend!.image.count 
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        let imageStat = friend!.image[indexPath.row]
        cell.config(imageStat: imageStat)
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let fullScreenVC = storyboard.instantiateViewController(identifier: "FullScreen") as! FullScreenImageController
        let indexPath = collectionView.indexPathsForSelectedItems!.first!
        let  photoName = friend!.image[indexPath.row]
        let friendPhoto: UIImage = UIImage(named: photoName.imageName)!
        
        fullScreenVC.startPhoto = indexPath.section
        fullScreenVC.photo = [friendPhoto]

        navigationController?.pushViewController(fullScreenVC, animated: true)

    }
     
}
