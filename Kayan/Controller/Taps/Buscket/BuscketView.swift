//
//  BuscketView.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class BuscketView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        
        //        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.isScrollEnabled = false
        tableV.register(BascketCell.self, forCellReuseIdentifier: "BascketCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpView(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
        
    }

}
