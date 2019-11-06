//
//  LoginVC.swift
//  Kayan
//
//  Created by Moe on 10/31/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    var mainview : LoginView!{
        return view as? LoginView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = LoginView()
        
        
    }
    
    

}
