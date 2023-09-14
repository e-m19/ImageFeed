//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Елена Михайлова on 28.05.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
     var profileImage = UIImageView()
     var nameLabel = UILabel(frame: .zero)
     var profileAddressLabel = UILabel(frame: .zero)
     var textLabel = UILabel(frame: .zero)
     var exitButton = UIButton.systemButton(
        with: UIImage(named: "logOffButton")!,
        target: ProfileViewController.self,
        action: #selector(Self.didTapButton)
     )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpConstraints()
        updateView(
            withImage: UIImage(named: "profileImage"),
            name: "Екатерина Новикова",
            profileAddress: "@ekaterina_nov",
            text: "Hello, world!",
            button: UIButton())
    }
    
    func setUpView() {
        profileImage = UIImageView()
        profileImage.layer.cornerRadius = 32
        view.addSubview(profileImage)
        
        nameLabel = UILabel()
        nameLabel.font = .systemFont(ofSize: 23, weight: UIFont.Weight.bold)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        profileAddressLabel = UILabel()
        profileAddressLabel.font = .systemFont(ofSize: 13)
        profileAddressLabel.textColor = .lightGray
        view.addSubview(profileAddressLabel)
        
        textLabel = UILabel()
        textLabel.font = .systemFont(ofSize: 13)
        textLabel.textColor = .white
        view.addSubview(textLabel)
        
        view.addSubview(exitButton)
    }
    
    func setUpConstraints() {
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        
        profileImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        profileImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 76).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        nameLabel.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 8).isActive = true
        
        profileAddressLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        profileAddressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        
        textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        textLabel.topAnchor.constraint(equalTo: profileAddressLabel.bottomAnchor, constant: 8).isActive = true
        
        exitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        exitButton.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor).isActive = true
        exitButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        exitButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
    }
    
    func updateView(withImage image: UIImage?, name: String?, profileAddress: String?, text: String?, button: UIButton?) {
        profileImage.image = image
        nameLabel.text = name
        profileAddressLabel.text = profileAddress
        textLabel.text = text
    }
    
    @objc private func didTapButton() {
        for view in view.subviews {
            if view is UILabel {
                view.removeFromSuperview()
            }
        }
    }
}


