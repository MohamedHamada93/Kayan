//
//  AddRatingRateVC.swift
//  Kayan
//
//  Created by Moe on 11/12/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AddRatingRateVC: UIViewController {

    var mainview : AddRatingView!{
        return view as? AddRatingView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = AddRatingView()
        
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
