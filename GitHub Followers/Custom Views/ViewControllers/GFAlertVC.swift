//
//  GFAlertVC.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 2/18/22.
//

import UIKit

class GFAlertVC: UIViewController {
    
    let containerView   = GFAlertContainerView()
    let titleLable      = GFTitleLable(textAlignment: .center, fontSize: 20)
    let messageLable    = GFBodyLable(textAlignment: .center)
    let actionButtom    = GFButton(backgraundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttomTitle: String?
    
    var padding: CGFloat = 20
    
    
    init(alertTitle: String, message: String, buttomTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle     = alertTitle
        self.message        = message
        self.buttomTitle    = buttomTitle
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubviews(containerView, titleLable, actionButtom, messageLable)
        view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        
        configureContainerView()
        configureTitleLable()
        configureActionButtom()
        configureMessageLable()
    }
    
    
    func configureContainerView() {
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    
    func configureTitleLable() {
        titleLable.text = alertTitle ?? "Something went wrong"
        
        NSLayoutConstraint.activate([
            titleLable.topAnchor.constraint(equalTo: containerView.topAnchor, constant: padding),
            titleLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            titleLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            titleLable.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    
    func configureActionButtom() {
        actionButtom.setTitle(buttomTitle ?? "Ok", for: .normal)
        actionButtom.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButtom.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -padding),
            actionButtom.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            actionButtom.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            actionButtom.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    
    func configureMessageLable() {
        messageLable.text           = message ?? "Unable  to complete requs"
        messageLable.numberOfLines  = 4
        
        NSLayoutConstraint.activate([
            messageLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor, constant: 8),
            messageLable.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: padding),
            messageLable.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -padding),
            messageLable.bottomAnchor.constraint(equalTo: actionButtom.topAnchor, constant: -12)
        ])
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
}
