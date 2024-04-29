//
//  ExploreVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class ExploreVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

}
