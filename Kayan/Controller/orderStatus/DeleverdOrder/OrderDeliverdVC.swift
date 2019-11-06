//
//  OrderDeliverdVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderDeliverdVC: UIViewController {

    var mainview : OrderDeliverdView!{
        return view as? OrderDeliverdView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OrderDeliverdView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 200
        
    }
    

  

}


extension OrderDeliverdVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderDeliverdCell", for: indexPath) as? OrderDeliverdCell
        cell!.selectionStyle = .none
        
        return cell!
}

    
}
