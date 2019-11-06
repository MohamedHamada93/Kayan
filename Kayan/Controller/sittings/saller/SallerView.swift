//
//  SallerView.swift
//  Kayan
//
//  Created by Moe on 10/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SallerView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var searchBar : UISearchBar = {
        let bar = UISearchBar()
        bar.placeholder = "Search for saller"
        bar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        bar.layer.applySketchShadow()
        
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.isScrollEnabled = false
        tableV.register(SallerCell.self, forCellReuseIdentifier: "SallerCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    
    var confirmBT : UIButton = {
       let butt = UIButton()
        butt.setTitle("confirm", for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        butt.layer.cornerRadius = 10
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
        mainView.addSubview(searchBar)
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            searchBar.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            searchBar.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            searchBar.heightAnchor.constraint(equalToConstant: 65)
            ])
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            confirmBT.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            confirmBT.heightAnchor.constraint(equalToConstant: 50)
            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: confirmBT.topAnchor, constant: -10)
            ])
        
   
        
    }
  

}
