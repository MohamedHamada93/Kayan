//
//  RegisterVC.swift
//  Kayan
//
//  Created by Moe on 10/31/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    
    var mainview : RegisterView!{
        return view as? RegisterView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = RegisterView()
        
    }
    

   

}
