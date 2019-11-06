//
//  TapsControllerVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class TapsControllerVC: UITabBarController,UITabBarControllerDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        //        setupTabBarButtons()
        
        //        title = "Call us".localize
        
        let BascketViewController = UINavigationController(rootViewController: BascketVC())
        let homeViewController = UINavigationController(rootViewController: ConfirmPassVC())
//        let galaryViewController = UINavigationController(rootViewController: OrdersVC())
//        //        let notificationsViewController = UINavigationController(rootViewController: NotificationsViewController())
//        let profileViewController = UINavigationController(rootViewController: ShopiingVC())
//        let chatHomeViewController = UINavigationController(rootViewController: MoreVc())
        
        BascketViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        
        homeViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
//        galaryViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "shopping-bag_3_25"), selectedImage:UIImage(named: "shopping-bag_3_25"))
//        profileViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "shopping-cart_25"), selectedImage: UIImage(named: "shopping-cart_25"))
//        chatHomeViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "more-button-interface-symbol-of-three-horizontal-aligned-dots_1_25"), selectedImage: UIImage(named: "more-button-interface-symbol-of-three-horizontal-aligned-dots_1_25"))
        //        notificationsViewController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "profile-1"), selectedImage: #imageLiteral(resourceName: "profile-1"))
        
        //tabBarController?.selectedViewController = homeViewController
        
        let tabBarList = [BascketViewController, homeViewController]
        viewControllers = tabBarList
        
        //        selectedViewController = tabBarList[2]
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleTabBarToProfileVC), name: toProfileVC, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleTabBarHomeVC), name: toHomeVC, object: nil)
    }
    
    @objc func handleTabBarToProfileVC () {
        selectedViewController = viewControllers?[0]
    }
    
    @objc func handleTabBarHomeVC () {
        selectedViewController = viewControllers?[1]
    }
    

}


let toProfileVC = Notification.Name("toProfileVC")
let toHomeVC = Notification.Name("toHomeVC")

