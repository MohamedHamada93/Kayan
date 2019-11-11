//
//  AddAdressVC.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AddAdressVC: UIViewController {
    var mainview : AddAdressView!{
        return view as? AddAdressView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = AddAdressView()
        
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
