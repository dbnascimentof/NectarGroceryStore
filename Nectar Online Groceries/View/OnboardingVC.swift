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

        configureBackgroundImage()
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
    
    // this function configures the image that is used on the background.
    func configureBackgroundImage() {
        let backgroundImage = UIImageView(frame: view.bounds)
        
        backgroundImage.contentMode = .scaleAspectFill
        backgroundImage.image = UIImage(named: "onboarding_hero")
        
        view.addSubview(backgroundImage)
        self.view.sendSubviewToBack(backgroundImage)
    }
    
    @objc func pushHomeVC() {
        navigationController?.pushViewController(HomeVC(), animated: true)
    }
}
