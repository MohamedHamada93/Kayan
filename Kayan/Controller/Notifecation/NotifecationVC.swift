//
//  NotifecationVC.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NotifecationVC: UIViewController {

    var mainview : NoteficationView!{
        return view as? NoteficationView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = NoteficationView()
        
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
