//
//  SuplieresVc.swift
//  Kayan
//
//  Created by Moe on 11/10/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SuplieresVc: UIViewController {
    
    var mainview : SuplieresView!{
        return view as? SuplieresView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SuplieresView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
         mainview.mainTableView.rowHeight = 170
        
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

extension SuplieresVc : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SuplieresCell", for: indexPath) as? SuplieresCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
