//
//  ViewController.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 11/04/24.
//

import UIKit

class ViewController: UIViewController {

    var onboardingImages: Array = ["onboarding_hero", "onboarding_fruits", "onboarding_tomatoes", "onboarding_fruits_light","onboarding_vegetables"]
    @IBOutlet weak var onboardingBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setOnboardingImage()
    }
    
    // This method randomly picks and set a background iamage from the onboarding images list.
    func setOnboardingImage(){
        let image = onboardingImages[Int.random(in: 0..<onboardingImages.count)]
        onboardingBackground.image = UIImage(imageLiteralResourceName: image)
    }


}

