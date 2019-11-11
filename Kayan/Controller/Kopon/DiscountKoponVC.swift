//
//  DiscountKoponVC.swift
//  Kayan
//
//  Created by Moe on 11/6/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DiscountKoponVC: UIViewController {
    
    var mainview : DiscountKopen!{
        return view as? DiscountKopen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DiscountKopen()
        
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
