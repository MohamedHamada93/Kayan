//
//  OrderStatusVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderStatusVC: UIViewController {

    var mainview : OrderStatusView!{
        return view as? OrderStatusView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OrderStatusView()
        cancelView()
        settarget()
         edgesForExtendedLayout = []
        
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
 
    @objc func deliverdView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        let sented = mainview.sendtedtapes
        let progress = mainview.progresstedtapes
        let all = mainview.Alltedtapes
        GenaricVC.clickedView(view: registerView)
        GenaricVC.notclickedView(view: signview)
        GenaricVC.notclickedView(view: sented)
        GenaricVC.notclickedView(view: progress)
        GenaricVC.notclickedView(view: all)
        
        mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
        
        let controller = OrderDeliverdVC()
        let controllerView = controller.mainview
        segua(controller: controller, view: mainview.contantview, controllerView: controllerView!)
    }
    
    @objc func cancelView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        let sented = mainview.sendtedtapes
        let progress = mainview.progresstedtapes
        let all = mainview.Alltedtapes
        GenaricVC.clickedView(view: signview)
        GenaricVC.notclickedView(view: registerView)
        GenaricVC.notclickedView(view: sented)
        GenaricVC.notclickedView(view: progress)
        GenaricVC.notclickedView(view: all)
        mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
        
        let controller = CancelOrderVC()
        let controllerView = controller.mainview
        segua(controller: controller, view: mainview.contantview, controllerView: controllerView!)
        
    }
    
    @objc func SentedView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        let sented = mainview.sendtedtapes
        let progress = mainview.progresstedtapes
        let all = mainview.Alltedtapes
        GenaricVC.notclickedView(view: signview)
        GenaricVC.notclickedView(view: registerView)
        GenaricVC.clickedView(view: sented)
         GenaricVC.notclickedView(view: progress)
        GenaricVC.notclickedView(view: all)
         mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
        let controller = SentedOrderVC()
        let controllerView = controller.mainview
         segua(controller: controller, view: mainview.contantview, controllerView: controllerView!)
        
    }
    @objc func ProgressView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        let sented = mainview.sendtedtapes
        let progress = mainview.progresstedtapes
        let all = mainview.Alltedtapes
        GenaricVC.notclickedView(view: signview)
        GenaricVC.notclickedView(view: registerView)
        GenaricVC.notclickedView(view: sented)
        GenaricVC.clickedView(view: progress)
        GenaricVC.notclickedView(view: all)
        mainview.contantview.subviews.forEach({ $0.removeFromSuperview() })
        let controller = ProgreesOrderVC()
        let controllerView = controller.mainview
        segua(controller: controller, view: mainview.contantview, controllerView: controllerView!)
        
    }
    
    @objc func AllView(){
        let registerView = mainview.rigistertaped
        let signview = mainview.singtapes
        let sented = mainview.sendtedtapes
        let progress = mainview.progresstedtapes
        let all = mainview.Alltedtapes
        GenaricVC.notclickedView(view: signview)
        GenaricVC.notclickedView(view: registerView)
        GenaricVC.notclickedView(view: sented)
        GenaricVC.notclickedView(view: progress)
        GenaricVC.clickedView(view: all)
        let controller = AllOrderVC()
        let controllerView = controller.mainview
        segua(controller: controller, view: mainview.contantview, controllerView: controllerView!)
        
    }
    
    
    func settarget(){
        mainview.DeliverdOrder.addTarget(self, action: #selector(deliverdView), for: .touchUpInside)
        mainview.CancelOrder.addTarget(self, action: #selector(cancelView), for: .touchUpInside)
        mainview.SendedOrder.addTarget(self, action: #selector(SentedView), for: .touchUpInside)
        mainview.progressOrder.addTarget(self, action: #selector(ProgressView), for: .touchUpInside)
        mainview.AllOrder.addTarget(self, action: #selector(AllView), for: .touchUpInside)
        
    }

}
