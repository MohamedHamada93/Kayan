//
//  FreeChargeVC.swift
//  Kayan
//
//  Created by Moe on 10/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FreeChargeVC: UIViewController {
    
   
    var mainview : FreeChargeView!{
        return view as? FreeChargeView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = FreeChargeView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        let logo = UIImage(named: "logo dark")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    


}
