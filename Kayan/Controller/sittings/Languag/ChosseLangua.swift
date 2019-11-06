//
//  ChosseLangua.swift
//  Kayan
//
//  Created by Moe on 10/22/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ChosseLangua: UIViewController {
    
    var mainview : ChosseLangView!{
        return view as? ChosseLangView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = ChosseLangView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigation()
    }
    
    func navigation(){
        self.navigationController?.navigationBar.layer.applySketchShadow()
        edgesForExtendedLayout = []
    }
    

  
}


extension ChosseLangua: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "LanguageCell", for: indexPath) as? LanguageCell{
            cell.selectionStyle = .none
             return cell
        }
        
        return LanguageCell()
    }
    
    
    
}
