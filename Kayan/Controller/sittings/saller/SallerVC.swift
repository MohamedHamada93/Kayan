//
//  SallerVC.swift
//  Kayan
//
//  Created by Moe on 10/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SallerVC: UIViewController {
    
    var mainview : SallerView!{
        return view as? SallerView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = SallerView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
         mainview.mainTableView.rowHeight = 50
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        title = "Saller"
//        self.navigationController?.navigationBar.layer.applySketchShadow()

    }
    
  

}


extension SallerVC: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SallerCell", for: indexPath) as? SallerCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
