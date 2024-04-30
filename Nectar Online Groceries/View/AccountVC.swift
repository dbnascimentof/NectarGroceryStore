//
//  AccountVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class AccountVC: UIViewController {

    let logoutUIButton = NOGButton(title: "Log out", style: "Secondary")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureLogoutUIButton()
    }
    
    func configureLogoutUIButton() {
        view.addSubview(logoutUIButton)
        
        NSLayoutConstraint.activate([
            logoutUIButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            logoutUIButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            logoutUIButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            logoutUIButton.heightAnchor.constraint(equalToConstant: 67)
        ])
        
    }
}
