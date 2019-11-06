//
//  ArrangeVC.swift
//  Kayan
//
//  Created by Moe on 10/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ArrangeVC: UIViewController {
    
    var mainview : ArrangeView!{
        return view as? ArrangeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = ArrangeView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 60
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         title = "Arrange"
        setupNavigationBar()
            self.navigationController?.navigationBar.layer.applySketchShadow()
//        navigation()
    }
    
    func navigation(){
         title = "Arrange"
//        navigation()
        self.navigationController?.navigationBar.layer.applySketchShadow()
        edgesForExtendedLayout = []
    }
    
    

}


extension ArrangeVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "ArrangeCell", for: indexPath) as? ArrangeCell
        cell!.selectionStyle = .none
        
            return cell!
        
    }
    
    
}
