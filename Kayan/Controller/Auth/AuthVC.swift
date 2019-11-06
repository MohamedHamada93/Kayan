//
//  AuthVC.swift
//  Kayan
//
//  Created by Moe on 10/31/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    var mainview : AuthView!{
        return view as? AuthView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = AuthView()
        settarget()
        RegisterView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigationBar()
        title = "my account with kayan"
//        self.navigationController?.navigationBar.layer.applySketchShadow()
    }
    
   @objc func RegisterView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        GenaricVC.clickedView(view: registerView)
        GenaricVC.notclickedView(view: signview)
    
     mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
    let controller = RegisterVC()
    addChild(controller)
    mainview.contantview.layer.borderColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
    controller.mainview.translatesAutoresizingMaskIntoConstraints = true
    mainview.contantview.addSubview(controller.mainview)
    controller.didMove(toParent: self)
    controller.mainview.frame = CGRect(x:0, y: 0, width: mainview.contantview.frame.width, height: mainview.contantview.frame.height)
        
    }
    
    @objc func SingView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        GenaricVC.clickedView(view: signview)
        GenaricVC.notclickedView(view: registerView)
         mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
        
        let controller = LoginVC()
        addChild(controller)
        mainview.contantview.layer.borderColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
        controller.mainview.translatesAutoresizingMaskIntoConstraints = true
        mainview.contantview.addSubview(controller.mainview)
        controller.didMove(toParent: self)
        controller.mainview.frame = CGRect(x:0, y: 0, width: mainview.contantview.frame.width, height: mainview.contantview.frame.height)
        
    }
    
    func settarget(){
        mainview.RegisterButton.addTarget(self, action: #selector(RegisterView), for: .touchUpInside)
        mainview.singButton.addTarget(self, action: #selector(SingView), for: .touchUpInside)
        
    }
    
    
    

}
