//
//  FollowerListVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/18/22.
//

import UIKit

class FollowerListVC: UIViewController {

    var username: String! = nil
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        configureCollectionView()
        getFollower()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    func getFollower() {
        NetworkManager.shared.getFollower(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print(followers)
            case .failure(let error):
                self.presentAlertOnMainTread(title: "Bad Staff Happend", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
}
