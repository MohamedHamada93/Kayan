//
//  AllOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AllOrderVC: UIViewController {

    var mainview : AllOrderView!{
        return view as? AllOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = AllOrderView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 200
        
    }
    

 

}


extension AllOrderVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllOrederCell", for: indexPath) as? AllOrederCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
}

