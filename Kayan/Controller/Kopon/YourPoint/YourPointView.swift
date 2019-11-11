//
//  YourPointView.swift
//  Kayan
//
//  Created by Moe on 11/7/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class YourPointView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var PointView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var pointCircel : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0.6392156863, blue: 1, alpha: 1)
        view.layer.borderWidth = 6
        view.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 43
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pointLabel : UILabel = {
       let label = UILabel()
        label.text = "9.999"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoBold(of: 23)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Point : UILabel = {
       let label = UILabel()
        label.text = "Point"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var EligabelLabel : UILabel = {
       let label = UILabel()
        label.text = "You are eligible for a discount voucher"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var InformayionBut : UIButton = {
        let butt = UIButton()
       butt.setImage(UIImage(named: "home"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var ChngePoint : UIButton = {
       let butt = UIButton()
        butt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        butt.setTitle( "Change point", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 12)
        butt.layer.applySketchShadow()
        butt.layer.cornerRadius = 8
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
        tableV.isScrollEnabled = true
        tableV.register(PointCell.self, forCellReuseIdentifier: "PointCell")
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
        mainView.addSubview(PointView)
        NSLayoutConstraint.activate([
            PointView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: -1),
            PointView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            PointView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            PointView.heightAnchor.constraint(equalToConstant: 135)
            ])
        PointView.addSubview(pointCircel)
        NSLayoutConstraint.activate([
            pointCircel.topAnchor.constraint(equalTo: PointView.topAnchor, constant: 20),
            pointCircel.leadingAnchor.constraint(equalTo: PointView.leadingAnchor, constant: 20),
            pointCircel.heightAnchor.constraint(equalToConstant: 86),
            pointCircel.widthAnchor.constraint(equalToConstant: 86)
            ])
        pointCircel.addSubview(pointLabel)
        NSLayoutConstraint.activate([
            pointLabel.topAnchor.constraint(equalTo: pointCircel.topAnchor, constant: 23),
            pointLabel.centerXAnchor.constraint(equalTo: pointCircel.centerXAnchor, constant: 0),
            pointLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        pointCircel.addSubview(Point)
        NSLayoutConstraint.activate([
            Point.topAnchor.constraint(equalTo: pointLabel.bottomAnchor, constant: 3),
            Point.centerXAnchor.constraint(equalTo: pointCircel.centerXAnchor, constant: 0)
            ])
        
        PointView.addSubview(EligabelLabel)
        NSLayoutConstraint.activate([
            EligabelLabel.topAnchor.constraint(equalTo: PointView.topAnchor, constant: 30),
            EligabelLabel.leadingAnchor.constraint(equalTo: pointCircel.trailingAnchor, constant: 20),
            EligabelLabel.trailingAnchor.constraint(equalTo: PointView.trailingAnchor, constant: -60)
            ])
        PointView.addSubview(InformayionBut)
        NSLayoutConstraint.activate([
            InformayionBut.centerYAnchor.constraint(equalTo: PointView.centerYAnchor, constant: 0),
            InformayionBut.trailingAnchor.constraint(equalTo: PointView.trailingAnchor, constant: -20),
            InformayionBut.heightAnchor.constraint(equalToConstant: 30),
            InformayionBut.widthAnchor.constraint(equalToConstant: 30)
            ])
        PointView.addSubview(ChngePoint)
        NSLayoutConstraint.activate([
//            ChngePoint.centerXAnchor.constraint(equalTo: PointView.centerXAnchor, constant: 0),
            ChngePoint.leadingAnchor.constraint(equalTo: EligabelLabel.leadingAnchor, constant: 0),
            ChngePoint.topAnchor.constraint(equalTo: EligabelLabel.bottomAnchor, constant: 5),
            ChngePoint.heightAnchor.constraint(equalToConstant: 40),
            ChngePoint.widthAnchor.constraint(equalToConstant: 105)
            
            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: PointView.bottomAnchor, constant: 0),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
    }

}
