
# GitHub Followers 

A brief description of what this project does and who it's for


## App Premise:

- The user can enter a GitHub username and retrieve a list of that username's followers.
- The user can search within these followers for a specific follower.
- The user is able to tap on a follower from that list to get more information about that follower. 
- The user is able to save favorite username searches so they don’t have to type them every time. This needs to persist between app launches.

## Requirements:

- 100% programmatic UI - No Storyboard
- No 3rd Party Libraries
## Design:

![App Screenshot](https://postimg.cc/NLCCRvK5)

## Details:

- Use the GitHub API - No authentication needed 
    - Followers endpoint - https://developer.github.com/v3/users/followers/
    - User info endpoint - https://developer.github.com/v3/users/
- When showing more information about a user, what information you display is up to you. If you were creating this product, what information do you think users want to see?
