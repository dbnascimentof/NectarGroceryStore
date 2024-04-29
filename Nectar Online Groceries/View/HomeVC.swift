//
//  HomeVC.swift
//  Nectar Online Groceries
//
//  Created by Daniel Filho on 29/04/24.
//

import UIKit

class HomeVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setViewControllers([createShopNC(), createExploreNC(), createCartNC(), createFavoriteNC(), createAccountNC()], animated: true)
        self.tabBar.tintColor = .systemGreen
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    func createShopNC() -> UINavigationController {
        let shopNC = ShopVC()
        shopNC.tabBarItem = UITabBarItem(title: "Shop", image: UIImage(systemName: "storefront"), tag: 0)
        
        return UINavigationController(rootViewController: shopNC)
    }
    
    func createExploreNC() -> UINavigationController {
        let exploreNC = ExploreVC()
        exploreNC.tabBarItem = UITabBarItem(title: "Explore", image: UIImage(systemName: "text.magnifyingglass"), tag: 1)
        
        return UINavigationController(rootViewController: exploreNC)
    }
    
    func createCartNC() -> UINavigationController {
        let cartNC = CartVC()
        cartNC.tabBarItem = UITabBarItem(title: "Cart", image: UIImage(systemName: "cart"), tag: 2)
        
        return UINavigationController(rootViewController: cartNC)
    }
    
    func createFavoriteNC() -> UINavigationController {
        let favoriteNC = FavoriteVC()
        favoriteNC.tabBarItem = UITabBarItem(title: "Favorite", image: UIImage(systemName: "heart"), tag: 3)
        
        return UINavigationController(rootViewController: favoriteNC)
    }
    
    func createAccountNC() -> UINavigationController {
        let accountNC = AccountVC()
        accountNC.tabBarItem = UITabBarItem(title: "Account", image: UIImage(systemName: "person"), tag: 4)
        
        return UINavigationController(rootViewController: accountNC)
    }
}
