//
//  ShopVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class ShopVC: UIViewController {

    let searchTextField = NOGTextField(placeholder: "Search Store", style: "Search")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureSearchTextField()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureSearchTextField() {
        view.addSubview(searchTextField)
        
        NSLayoutConstraint.activate([
            searchTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24.71),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24.71),
            searchTextField.heightAnchor.constraint(equalToConstant: 51.57)
        ])
    }

}
