//
//  GFTabBarController.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/8/22.
//

import UIKit

class GFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor         = .systemGreen
        UITabBar.appearance().backgroundColor   = .secondarySystemBackground
        viewControllers                         = [createSearchNC(), createFavoritNC()]
    }
    
    
    func createSearchNC() -> UINavigationController {
        let serchVC         = SearchVC()
        serchVC.title       = "Search"
        serchVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .search, tag: 0)

        return UINavigationController(rootViewController: serchVC)
    }
    
    
    func createFavoritNC() -> UINavigationController {
       let favoritesVC          = FavoritesListVC()
        favoritesVC.title       = "Favorites"
        favoritesVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)

        return UINavigationController(rootViewController: favoritesVC)
    }
}
