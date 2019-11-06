//
//  NewPassVC.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NewPassVC: UIViewController {
    
    var mainview : NewPassView!{
        return view as? NewPassView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = NewPassView()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        title = "My kayan account"
        //        self.navigationController?.navigationBar.layer.applySketchShadow()
        
    }

  

}
