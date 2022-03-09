//
//  GFEmptyStateView.swift
//  GitHub Followers
//
//  Created by Olexsii Levchenko on 3/2/22.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel    = GFTitleLable(textAlignment: .center, fontSize: 28)
    let logoImageView   = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(massage: String) {
        self.init(frame: .zero)
        messageLabel.text = massage
    }
    
    private func configure() {
        configureMessageLabel()
        configureLogoImage()
    }
    
    private func configureMessageLabel() {
        addSubview(messageLabel)
        
        messageLabel.numberOfLines  = 3
        messageLabel.textColor      = .secondaryLabel

        let lableCenterYConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : -150
        let messageLableCenterYConstraint = messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: lableCenterYConstant)
           messageLableCenterYConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func configureLogoImage() {
        addSubview(logoImageView)
        
        logoImageView.image = Images.emptyStateLogo
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let logoButtomConstant: CGFloat = DeviceTypes.isiPhoneSE || DeviceTypes.isiPhone8Zoomed ? -80 : 40
        let logoImageViewButtomConstraint = logoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: logoButtomConstant)
           logoImageViewButtomConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            logoImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 170),
        ])
    }
}
