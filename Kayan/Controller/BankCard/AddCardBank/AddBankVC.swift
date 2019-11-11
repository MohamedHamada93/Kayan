//
//  AddBankVC.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AddBankVC: UIViewController {

    var mainview : AddBankView!{
        return view as? AddBankView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = AddBankView()
        
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
