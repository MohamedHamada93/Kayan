//
//  ChosseColorVC.swift
//  Kayan
//
//  Created by Moe on 10/25/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ChosseColorVC: UIViewController {

    var mainview : ChooseColoView!{
        return view as? ChooseColoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ChooseColoView()
        mainview.mainTableView.dataSource = self
        mainview.mainTableView.delegate = self
        
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

          title = "Color"
        setupNavigationBar()
    }
    
 

}

extension ChosseColorVC: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath) as? ColorCell
        cell!.selectionStyle = .none
        
        return cell!
    }
    
    
    
}
