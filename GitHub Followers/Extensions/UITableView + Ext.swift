//
//  UITableView + Ext.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/10/22.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
