//
//  CancelOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CancelOrderVC: UIViewController {
    
    var mainview : CancelOrderView!{
        return view as? CancelOrderView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = CancelOrderView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
         mainview.mainTableView.rowHeight = 130
    }
    
    

}


extension CancelOrderVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CancelCell", for: indexPath) as? CancelCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
