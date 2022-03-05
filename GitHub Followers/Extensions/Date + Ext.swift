//
//  Date + Ext.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/5/22.
//

import Foundation


extension Date {
    func convertToMonthYearFormat() -> String {
       let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
