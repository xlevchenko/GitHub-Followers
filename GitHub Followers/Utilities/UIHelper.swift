//
//  UIHelper.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/1/22.
//

import UIKit

enum UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 5
        let minimumItemSpacing: CGFloat = 10
        let availableWdith              = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth                   = availableWdith / 3

        let flowLayout                  = UICollectionViewFlowLayout()
        flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize             = CGSize(width: itemWidth, height: itemWidth)
        flowLayout.minimumLineSpacing   = 30

        return flowLayout
    }
}
