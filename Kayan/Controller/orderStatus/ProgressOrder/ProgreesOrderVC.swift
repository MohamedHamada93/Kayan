//
//  ProgreesOrderVC.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProgreesOrderVC: UIViewController {

    var mainview : ProgressView!{
        return view as? ProgressView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ProgressView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 140
        
    }
    


}




extension ProgreesOrderVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProgreesCell", for: indexPath) as? ProgreesCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
}
