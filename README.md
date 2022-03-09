
# GitHub Followers 

The application allows you to see the subscribers of the selected user. Add the selected users to the Favorites list. Opens the user's page in the Safari browser. Search through a list of users. It is also possible to view the subscribers of the selected user. Using the GitHub API. 100% programmatic UI - No Storyboard.


## App Premise:

- The user can enter a GitHub username and retrieve a list of that username's followers.
- The user can search within these followers for a specific follower.
- The user is able to tap on a follower from that list to get more information about that follower. 
- The user is able to save favorite username searches so they don’t have to type them every time. This needs to persist between app launches.

## Requirements:

- 100% programmatic UI - No Storyboard
- No 3rd Party Libraries
- Created a network request using the GitHub API
- Download and cache images
- Created custom alerts to display errors
- Used UICollectionView and UITableView
- Update data using UICollectionViewDiffableDataSource
- Added Search Controller to the project
- Parse JSON
- Stored data using UserDefaults

## Design:

![xxx](https://user-images.githubusercontent.com/34953510/157311412-8d538b23-ad81-45d4-9f54-2f201eaaf68a.jpg)

## Details:

- Use the GitHub API - No authentication needed 
    - Followers endpoint - https://developer.github.com/v3/users/followers/
    - User info endpoint - https://developer.github.com/v3/users/
- Using the API we display information about the user. No authorization is required to use.

## How to run the application?:

- Cloning this repository and run from Xcode
- Does't require additional settings
