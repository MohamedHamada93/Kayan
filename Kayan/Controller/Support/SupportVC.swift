//
//  SupportVC.swift
//  Kayan
//
//  Created by Moe on 11/12/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SupportVC: UIViewController {

    var mainview : SupportView!{
        return view as? SupportView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = SupportView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.rowHeight = 130
    }
    
     var images : [String] = ["whatsapp","phonecall","chat"]
    var titles : [String] = ["whatsapp","call us","call us"]
     var desc : [String] = ["تحدث مع مندوب كيان لعرض استفساراتكم واقتراحاتكم","تحدث مع مندوب كيان لعرض استفساراتكم واقتراحاتكم","تحدث مع مندوب كيان لعرض استفساراتكم واقتراحاتكم"]

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


extension SupportVC : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SupportCell", for: indexPath) as? SupportCell
        cell?.MainImage.image = UIImage(named: images[indexPath.row])
        cell?.titleLabel.text = titles[indexPath.row]
        cell?.descrLabe.text = desc[indexPath.row]
        
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
