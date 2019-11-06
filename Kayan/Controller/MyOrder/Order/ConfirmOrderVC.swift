//
//  ConfirmOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ConfirmOrderVC: UIViewController {

    var mainview : ConfirmOrderView!{
        return view as? ConfirmOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ConfirmOrderView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
         mainview.mainTableView.rowHeight = 30
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        navgition()
        
    }
    
    func navgition(){
        let logo = UIImage(named: "logo dark")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }
    

   

}

extension ConfirmOrderVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCellTableViewCell", for: indexPath) as? ProductCellTableViewCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
