//
//  GFItemInfoView.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/4/22.
//

import UIKit


enum ItemInfoType {
    case repos, gists, followers, following
}


class GFItemInfoView: UIView {

    let symbolImageView = UIImageView()
    let titleLable = GFTitleLable(textAlignment: .left, fontSize: 14)
    let countLable = GFTitleLable(textAlignment: .center, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        addSubview(symbolImageView)
        addSubview(titleLable)
        addSubview(countLable)
        
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            titleLable.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            titleLable.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            titleLable.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLable.heightAnchor.constraint(equalToConstant: 18),
            
            countLable.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLable.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLable.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLable.heightAnchor.constraint(equalToConstant: 18)
        ])
    }
    
    func set(itemInfoType: ItemInfoType, withCount count: Int) {
        switch itemInfoType {
        case .repos:
            symbolImageView.image = UIImage(systemName: SFSymbols.repos)
            titleLable.text = "Public Repos"
        case .gists:
            symbolImageView.image = UIImage(systemName: SFSymbols.gists)
            titleLable.text = "Public Gists"
        case .followers:
            symbolImageView.image = UIImage(systemName: SFSymbols.followers)
            titleLable.text = "Followers"
        case .following:
            symbolImageView.image = UIImage(systemName: SFSymbols.following)
            titleLable.text = "Following"
        }
        countLable.text = String(count)
    }
}
