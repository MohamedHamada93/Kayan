//
//  SentedOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SentedOrderVC: UIViewController {

    var mainview : SentedOrderView!{
        return view as? SentedOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SentedOrderView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 200
        
    }
    


}



extension SentedOrderVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentedCell", for: indexPath) as? SentedCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
}
