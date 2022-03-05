//
//  GFFollowerItemVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/4/22.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgraundColor: .systemGreen, title: "Get Followers")
    }
}
