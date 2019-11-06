//
//  SuccesOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SuccesOrderVC: UIViewController {

    var mainview : SuccessOrderView!{
        return view as? SuccessOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SuccessOrderView()
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
      navgition()
        
    }
    
    func navgition(){
//    self.navigationController?.navigationBar.layer.applySketchShadow()
        let logo = UIImage(named: "logo dark")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    

   

}
