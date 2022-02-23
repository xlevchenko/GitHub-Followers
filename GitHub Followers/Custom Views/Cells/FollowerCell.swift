//
//  FollowerCell.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/23/22.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "FollowerCell"
    
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLable = GFTitleLable(textAlignment: .center, fontSize: 16)
    
    
    let padding: CGFloat = 8
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureAvatar()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLable.text = follower.login
    }
    
    private func configureAvatar() {
        addSubview(avatarImageView)
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageView.widthAnchor.constraint(equalTo: avatarImageView.widthAnchor)
        ])
        
    }
    
    private func configureLable() {
        addSubview(usernameLable)
        
        NSLayoutConstraint.activate([
            usernameLable.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLable.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
