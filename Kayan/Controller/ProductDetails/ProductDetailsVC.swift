//
//  ProductDetailsVC.swift
//  Kayan
//
//  Created by Moe on 11/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProductDetailsVC: UIViewController {

    var mainview : ProductDetailView!{
        return view as? ProductDetailView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ProductDetailView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
        
    }
    



}
