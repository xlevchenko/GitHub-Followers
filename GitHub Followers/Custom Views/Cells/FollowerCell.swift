//
//  FollowerCell.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/23/22.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID  = "FollowerCell"
    let avatarImageView = GFAvatarImageView(frame: .zero)
    let usernameLable   = GFTitleLable(textAlignment: .center, fontSize: 16)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(follower: Follower) {
        avatarImageView.downloadImage(fromURL: follower.avatarUrl)
        usernameLable.text = follower.login
    }
    
    
    private func configure() {
        addSubviews(avatarImageView, usernameLable)
        
        let padding: CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatarImageView.heightAnchor.constraint(equalToConstant: 100),
            avatarImageView.widthAnchor.constraint(equalToConstant: 100),
            
            usernameLable.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
            usernameLable.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLable.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLable.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
