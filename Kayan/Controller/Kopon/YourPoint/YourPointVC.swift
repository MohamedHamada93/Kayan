//
//  YourPointVC.swift
//  Kayan
//
//  Created by Moe on 11/7/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class YourPointVC: UIViewController {

    var mainview : YourPointView!{
        return view as? YourPointView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = YourPointView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
          mainview.mainTableView.rowHeight = 70
        
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



extension YourPointVC: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PointCell", for: indexPath) as? PointCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
}
