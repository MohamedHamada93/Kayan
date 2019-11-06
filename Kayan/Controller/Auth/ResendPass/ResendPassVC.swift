//
//  ResendPassVC.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ResendPassVC: UIViewController {

    var mainview : ResendPassView!{
        return view as? ResendPassView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ResendPassView()
        
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        title = "My kayan account"
        //        self.navigationController?.navigationBar.layer.applySketchShadow()
        
    }
 

}
