//
//  SearchVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/16/22.
//

import UIKit

class SearchVC: UIViewController {

    let logoImageView       = UIImageView()
    let usernameTextFilde   = GFTextField()
    let callToActionButton  = GFButton(backgraundColor: .systemGreen, title: "Get Followers")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubviews(logoImageView, usernameTextFilde, callToActionButton)
        
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
        usernameTextFilde.text = ""
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    func createDismissKeyboardTapGestrue() {
        //keyboard dismiss if we tap on the screen
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    
    @objc func pushFollowerListVC() {
        guard isUserNameEnterd else {
            presentAlertOnMainTread(title: "Empty Username", message: "Please enter a username. We need to know who to look for 🧐.", buttonTitle: "Ok")
            return
        }
        usernameTextFilde.resignFirstResponder()
        
        let followerListVC = FollowerListVC(username: usernameTextFilde.text!)
        navigationController?.pushViewController(followerListVC, animated: true)
    }
    
    
    func configureLogoImageView() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = Images.ghLogo
        
        let topConstraintConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? 20 : 80
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: topConstraintConstant),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 200),
            logoImageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    
    func configureTextField() {
        usernameTextFilde.delegate = self
        
        NSLayoutConstraint.activate([
            usernameTextFilde.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            usernameTextFilde.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameTextFilde.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextFilde.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    
    func configureCallToActionButtom() {
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
