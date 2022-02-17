//
//  SearchVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/16/22.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextFilde = GFTextField()
    let callToActionButton = GFButton(backgraundColor: .systemGreen, title: "Get Followers")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        //self.navigationController!.navigationBar.barTintColor = UIColor.yellow
    }
    

}
