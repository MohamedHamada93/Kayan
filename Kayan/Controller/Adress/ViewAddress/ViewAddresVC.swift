//
//  ViewAddresVC.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ViewAddresVC: UIViewController {

    var mainview : ViewAddreeView!{
        return view as? ViewAddreeView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ViewAddreeView()
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

extension ViewAddresVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdreesCell", for: indexPath) as? AdreesCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
}
