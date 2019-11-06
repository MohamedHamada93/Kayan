//
//  ConfirmPassVC.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ConfirmPassVC: UIViewController {

    var mainview : ConfirmPassView!{
        return view as? ConfirmPassView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ConfirmPassView()
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textPlaceholder()
        setupNavigationBar()
        title = "my account with kayan"
        self.navigationController?.navigationBar.layer.applySketchShadow()
    }
    
    func textPlaceholder(){
        mainview.codeText.attributedPlaceholder = NSAttributedString(string: "code",
                                                                     attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.6078431373, green: 0.7176470588, blue: 0.7843137255, alpha: 1)])
    }


}
