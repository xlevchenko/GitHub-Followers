//
//  GFBodyLable.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/18/22.
//

import UIKit

class GFBodyLable: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }
    
    private func configure() {
        font                                = UIFont.preferredFont(forTextStyle: .body)
        textColor                           = .secondaryLabel
        adjustsFontForContentSizeCategory   = true
        adjustsFontSizeToFitWidth           = true
        minimumScaleFactor                  = 0.75
        lineBreakMode                       = .byWordWrapping
        translatesAutoresizingMaskIntoConstraints = false
    }

}
