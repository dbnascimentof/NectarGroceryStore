//
//  OnboardingVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class OnboardingVC: UIViewController {

    let callToActionButton = NOGButton(title: "Get Started", style: "Primary")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureCallToActionButton()
    }
    
    func configureCallToActionButton(){
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushHomeVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -90.84),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30.5),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30.5),
            callToActionButton.heightAnchor.constraint(equalToConstant: 67)
        ])
    }
    
    @objc func pushHomeVC() {
        navigationController?.pushViewController(HomeVC(), animated: true)
    }
}
