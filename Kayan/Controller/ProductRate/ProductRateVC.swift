//
//  ProductRateVC.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProductRateVC: UIViewController {

    var mainview : ProductRateView!{
        return view as? ProductRateView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ProductRateView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 170
        
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


extension ProductRateVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RateCell", for: indexPath) as? RateCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
