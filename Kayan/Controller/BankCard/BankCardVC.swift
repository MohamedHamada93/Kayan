//
//  BankCardVC.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class BankCardVC: UIViewController {

    var mainview : CardBankView!{
        return view as? CardBankView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = CardBankView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 120
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


extension BankCardVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BankCell", for: indexPath) as? BankCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
