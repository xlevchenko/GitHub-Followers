//
//  User.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/20/22.
//

import Foundation

struct User: Codable {
    
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let followers: Int
    let following: Int
    let createdAt: Date
}
