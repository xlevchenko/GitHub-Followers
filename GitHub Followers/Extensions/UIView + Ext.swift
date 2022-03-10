//
//  UIView + Ext.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/10/22.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
