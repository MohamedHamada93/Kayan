//
//  ChosseLangView.swift
//  Kayan
//
//  Created by Moe on 10/22/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ChosseLangView: UIView {

 
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var languaLabel : UILabel = {
        let label = UILabel()
        label.text = "Langua"
        label.textColor = #colorLiteral(red: 0.03921568627, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var checkArabicbutton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var unchkArabicbutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var ArabicLabel : UILabel = {
        let label = UILabel()
        label.text = "Arabic"
        label.textColor = #colorLiteral(red: 0.03921568627, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var checkEnglishbutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var uncheckEngbutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var EnglishLabel : UILabel = {
        let label = UILabel()
        label.text = "English"
        label.textColor = #colorLiteral(red: 0.03921568627, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var Lineview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CityLabel : UILabel = {
        let label = UILabel()
        label.text = "City"
        label.textColor = #colorLiteral(red: 0.03921568627, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        tableV.register(LanguageCell.self, forCellReuseIdentifier: "LanguageCell")
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
     mainView.addSubview(languaLabel)
        NSLayoutConstraint.activate([
            languaLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            languaLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30)
            ])
        mainView.addSubview(checkArabicbutton)
        NSLayoutConstraint.activate([
            checkArabicbutton.topAnchor.constraint(equalTo: languaLabel.bottomAnchor, constant: 20),
            checkArabicbutton.leadingAnchor.constraint(equalTo: languaLabel.leadingAnchor, constant: 0),
            checkArabicbutton.heightAnchor.constraint(equalToConstant: 25),
            checkArabicbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainView.addSubview(unchkArabicbutton)
        NSLayoutConstraint.activate([
            unchkArabicbutton.topAnchor.constraint(equalTo: languaLabel.bottomAnchor, constant: 20),
            unchkArabicbutton.leadingAnchor.constraint(equalTo: languaLabel.leadingAnchor, constant: 0),
            unchkArabicbutton.heightAnchor.constraint(equalToConstant: 25),
            unchkArabicbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainView.addSubview(ArabicLabel)
        NSLayoutConstraint.activate([
            ArabicLabel.topAnchor.constraint(equalTo: checkArabicbutton.topAnchor, constant: 0),
            ArabicLabel.leadingAnchor.constraint(equalTo: checkArabicbutton.trailingAnchor, constant: 20)
            ])
        mainView.addSubview(checkEnglishbutton)
        NSLayoutConstraint.activate([
            checkEnglishbutton.topAnchor.constraint(equalTo: checkArabicbutton.bottomAnchor, constant: 15),
            checkEnglishbutton.leadingAnchor.constraint(equalTo: languaLabel.leadingAnchor, constant: 0),
            checkEnglishbutton.heightAnchor.constraint(equalToConstant: 25),
            checkEnglishbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainView.addSubview(uncheckEngbutton)
        NSLayoutConstraint.activate([
            uncheckEngbutton.topAnchor.constraint(equalTo: checkArabicbutton.bottomAnchor, constant: 15),
            uncheckEngbutton.leadingAnchor.constraint(equalTo: languaLabel.leadingAnchor, constant: 0),
            uncheckEngbutton.heightAnchor.constraint(equalToConstant: 25),
            uncheckEngbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainView.addSubview(EnglishLabel)
        NSLayoutConstraint.activate([
            EnglishLabel.topAnchor.constraint(equalTo: checkEnglishbutton.topAnchor, constant: 0),
            EnglishLabel.leadingAnchor.constraint(equalTo: checkEnglishbutton.trailingAnchor, constant: 20)
            ])
        mainView.addSubview(Lineview)
        NSLayoutConstraint.activate([
            Lineview.topAnchor.constraint(equalTo: checkEnglishbutton.bottomAnchor, constant: 20),
            Lineview.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            Lineview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            Lineview.heightAnchor.constraint(equalToConstant: 1)
            
            ])
        mainView.addSubview(CityLabel)
        NSLayoutConstraint.activate([
            CityLabel.topAnchor.constraint(equalTo: Lineview.bottomAnchor, constant: 15),
            CityLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 15),
            
            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: CityLabel.bottomAnchor, constant: 5),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
    }

}
