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
    
    
    convenience init(backgraundColor: UIColor, title: String) {
        self.init(frame: .zero)
        self.backgroundColor = backgraundColor
        self.setTitle(title, for: .normal)
    }
    
    
    private func configure() {
        layer.cornerRadius  = 10
        titleLabel?.font    = UIFont.preferredFont(forTextStyle: .headline)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func set(backgraundColor: UIColor, title: String) {
        self.backgroundColor = backgraundColor
        setTitle(title, for: .normal)
    }
}
