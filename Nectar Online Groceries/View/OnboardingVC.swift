//
//  OnboardingVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class OnboardingVC: UIViewController {

    let callToActionButton = NOGButton(title: "Get Started", style: "Primary")
    let subTitleTextView = UITextView()
    let titleTextView = UILabel()
    let logoImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureBackgroundImage()
        configureCallToActionButton()
        configureSubTitleTextView()
        configureTitleTextView()
        configureLogoImageView()
    }
    
    // Configures the image used on the background
    func configureBackgroundImage() {
        // list of images to be used randomly on the backend.
        let backgroundImagesList = [
            "onboarding_fruits_light",
            "onboarding_hero",
            "onboarding_fruits",
            "onboarding_tomatoes",
            "onboarding_vegetables"
        ]
        
        let backgroundImage = UIImageView(frame: view.bounds)
        
        backgroundImage.contentMode     = .scaleAspectFill
        backgroundImage.image           = UIImage(named: backgroundImagesList.randomElement()!)
        backgroundImage.setUiViewOverlay(color: .black, alpha: 0.5)
        
        view.addSubview(backgroundImage)
        self.view.sendSubviewToBack(backgroundImage)
    }
    
    // Configures the image used as logo
    func configureLogoImageView() {
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoImageView)
        
        logoImageView.image         = UIImage(named: "NectarLogo")
        logoImageView.contentMode   = .scaleAspectFit
        
        NSLayoutConstraint.activate([
            logoImageView.bottomAnchor.constraint(equalTo: titleTextView.topAnchor, constant: -10),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 56.36),
            logoImageView.widthAnchor.constraint(equalToConstant: 48.47)
        ])
    }
    
    // Configures the title
    func configureTitleTextView() {
        titleTextView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(titleTextView)
        
        titleTextView.font                      = UIFont.systemFont(ofSize: 50, weight: .semibold)
        titleTextView.textColor                 = .white
        titleTextView.backgroundColor           = UIColor.black.withAlphaComponent(0)
        titleTextView.textAlignment             = .center
        titleTextView.adjustsFontSizeToFitWidth = true
        titleTextView.minimumScaleFactor        = 0.5
        titleTextView.numberOfLines             = 2
        titleTextView.text                      = "Welcome to our store"
        
        
        NSLayoutConstraint.activate([
            titleTextView.bottomAnchor.constraint(equalTo: subTitleTextView.topAnchor, constant: -9.28),
            titleTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80.87),
            titleTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80.87),
            titleTextView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    // Configures the sub-title
    func configureSubTitleTextView() {
        subTitleTextView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(subTitleTextView)
        
        subTitleTextView.font      = UIFont.preferredFont(forTextStyle: .subheadline)
        subTitleTextView.textColor = .white
        subTitleTextView.textAlignment = .center
        subTitleTextView.backgroundColor = UIColor.black.withAlphaComponent(0)
        subTitleTextView.text = "Get your groceries in as fast as one hour"
        
        
        NSLayoutConstraint.activate([
            subTitleTextView.bottomAnchor.constraint(equalTo: self.callToActionButton.topAnchor, constant: -40),
            subTitleTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 59.5),
            subTitleTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -59.5),
            subTitleTextView.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    // configures the CTA Button
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
