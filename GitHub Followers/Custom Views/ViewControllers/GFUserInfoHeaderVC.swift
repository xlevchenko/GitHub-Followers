//
//  GFUserInfoHeaderVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/3/22.
//

import UIKit

class GFUserInfoHeaderVC: UIViewController {
    
    let avatarImageView    = GFAvatarImageView(frame: .zero)
    let userNameLable      = GFTitleLable(textAlignment: .left, fontSize: 34)
    let nameLable          = GFSecondaryTitleLable(fontSize: 18)
    let locationImageView  = UIImageView()
    let locationLable      = GFSecondaryTitleLable(fontSize: 18)
    let bioLable           = GFBodyLable(textAlignment: .left)
    
    var user: User!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        layoutUI()
        configureUIElements()
    }
    
    func configureUIElements() {
        downloadAvatarImage()
        userNameLable.text          = user.login
        nameLable.text              = user.name ?? ""
        locationLable.text          = user.location ?? "No Location"
        bioLable.text               = user.bio ?? "No bio available"
        bioLable.numberOfLines      = 3
        
        locationImageView.image     = SFSymbols.location
        locationImageView.tintColor = .secondaryLabel
        
    }
    
    func downloadAvatarImage() {
        NetworkManager.shared.downloadImage(from: user.avatarUrl) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.avatarImageView.image = image }
        }
    }
    
    func addSubview() {
        view.addSubviews(avatarImageView, userNameLable, nameLable, locationImageView, locationLable, bioLable)
    }
    
    func layoutUI() {
        let padding: CGFloat = 20
        let textImagePadding: CGFloat = 12
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            avatarImageView.widthAnchor.constraint(equalToConstant: 90),
            avatarImageView.heightAnchor.constraint(equalToConstant: 90),
            
            userNameLable.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            userNameLable.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            userNameLable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            userNameLable.heightAnchor.constraint(equalToConstant: 38),
            
            nameLable.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor, constant: 8),
            nameLable.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            nameLable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            nameLable.heightAnchor.constraint(equalToConstant: 20),
            
            locationImageView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor),
            locationImageView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: textImagePadding),
            locationImageView.widthAnchor.constraint(equalToConstant: 20),
            locationImageView.heightAnchor.constraint(equalToConstant: 20),
            
            locationLable.centerYAnchor.constraint(equalTo: locationImageView.centerYAnchor),
            locationLable.leadingAnchor.constraint(equalTo: locationImageView.trailingAnchor, constant: 5),
            locationLable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            locationLable.heightAnchor.constraint(equalToConstant: 20),
            
            bioLable.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: padding),
            bioLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            bioLable.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bioLable.heightAnchor.constraint(equalToConstant: 90)
            
            
        ])
    }
}
