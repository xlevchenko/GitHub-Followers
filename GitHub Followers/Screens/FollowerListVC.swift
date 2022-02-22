//
//  FollowerListVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/18/22.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        NetworkManager.shared.getFollower(for: username, page: 1) { followers, errorMessage in
            guard let followers = followers else {
                self.presentAlertOnMainTread(title: "Bad Staff Happend", message: errorMessage!, buttonTitle: "Ok")
                return
            }
            print("Followers.count = \(followers.count)")
            print(followers)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
