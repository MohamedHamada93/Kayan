//
//  BascketVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class BascketVC: UIViewController {

    var mainview : BuscketView!{
        return view as? BuscketView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = BuscketView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
         mainview.mainTableView.rowHeight = 150
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


extension BascketVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BascketCell", for: indexPath) as? BascketCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
