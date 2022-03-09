//
//  GFAvatarImageView.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/23/22.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    let cache               = NetworkManager.shared.cache
    let placeholderImage    = UIImage(named: "avatar-placeholder-dark")

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius  = 10
        clipsToBounds       = true
        image               = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
        sizeThatFits(CGSize(width: 25, height: 25))
    }
}
