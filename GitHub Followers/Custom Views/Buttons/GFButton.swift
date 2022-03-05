//
//  GFButton.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/16/22.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgraundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgraundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func set(backgraundColor: UIColor, title: String) {
        self.backgroundColor = backgraundColor
        setTitle(title, for: .normal)
    }
}
