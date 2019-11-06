//
//  PeriodTimeVC.swift
//  Kayan
//
//  Created by Moe on 10/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PeriodTimeVC: UIViewController {
    
    var mainview : PeriodTimeView!{
        return view as? PeriodTimeView
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view = PeriodTimeView()
        
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        let logo = UIImage(named: "logo dark")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }

}
