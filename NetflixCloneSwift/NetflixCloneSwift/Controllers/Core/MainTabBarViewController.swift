//
//  ViewController.swift
//  NetflixCloneSwift
//
//  Created by Jose Alberto Rosario Castillo on 23/3/25.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Inicializacion de las View
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        // Iconos de la tabBar
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        // Nombres de las tab
        vc1.tabBarItem.title = TabBarSelection.home.rawValue
        vc2.tabBarItem.title = TabBarSelection.upcoming.rawValue
        vc3.tabBarItem.title = TabBarSelection.search.rawValue
        vc4.tabBarItem.title = TabBarSelection.downloads.rawValue
        
        //tabBar tint for iconos
        tabBar.tintColor = .label
        
        // Seteo de ViewController´s
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
    }
}

extension MainTabBarViewController: UITabBarControllerDelegate {
    enum TabBarSelection: String {
        case home = "Home"
        case upcoming = "Upcoming"
        case search = "Search"
        case downloads = "Downloads"
    }
}

