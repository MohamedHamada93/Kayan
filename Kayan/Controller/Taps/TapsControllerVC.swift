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
        let MoreViewcontroller = UINavigationController(rootViewController: MoreVC())
        let ClientViewController = UINavigationController(rootViewController: SuplieresVc())

        
        BascketViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        
        MoreViewcontroller.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        ClientViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "home"), selectedImage:UIImage(named: "home"))
//        profileViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "shopping-cart_25"), selectedImage: UIImage(named: "shopping-cart_25"))
//        chatHomeViewController.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "more-button-interface-symbol-of-three-horizontal-aligned-dots_1_25"), selectedImage: UIImage(named: "more-button-interface-symbol-of-three-horizontal-aligned-dots_1_25"))
        //        notificationsViewController.tabBarItem = UITabBarItem(title: "", image: #imageLiteral(resourceName: "profile-1"), selectedImage: #imageLiteral(resourceName: "profile-1"))
        
        //tabBarController?.selectedViewController = homeViewController
        
        let tabBarList = [BascketViewController, MoreViewcontroller,ClientViewController]
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

