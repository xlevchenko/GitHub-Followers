//
//  SearchVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/16/22.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView = UIImageView()
    let usernameTextFilde = GFTextField()
    let callToActionButton = GFButton(backgraundColor: .systemGreen, title: "Get Followers")
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        createDismissKeyboardTapGestrue()
        
        configureLogoImageView()
        configureTextField()
        configureCallToActionButtom()
    }
    
    var isUserNameEnterd: Bool {
        return !usernameTextFilde.text!.isEmpty
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func createDismissKeyboardTapGestrue() {
        //keyboard dismiss if we tap on the screen
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    @objc func pushFollowerListVC() {
        
        guard isUserNameEnterd else {
            presentAlertOnMainTread(title: "Empty Username", message: "Please enter a username. We need to know who to look for 🧐.", buttonTitle: "Ok")
            return
        }
                
        let followerListVC = FollowerListVC()
        followerListVC.username = usernameTextFilde.text
        followerListVC.title = usernameTextFilde.text
        navigationController?.pushViewController(followerListVC, animated: true)
    }
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.image = UIImage(named: "gh-logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureTextField() {
        view.addSubview(usernameTextFilde)
        usernameTextFilde.delegate = self
        
        NSLayoutConstraint.activate([
            usernameTextFilde.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            usernameTextFilde.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextFilde.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextFilde.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func configureCallToActionButtom() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushFollowerListVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}


extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushFollowerListVC()
        return true
    }
}
