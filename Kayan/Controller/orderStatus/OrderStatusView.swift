//
//  OrderStatusView.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderStatusView: UIView {
    
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CancelOrder: UIButton = {
        let butt = UIButton()
        butt.setTitle("CancelOrder", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var DeliverdOrder: UIButton = {
        let butt = UIButton()
        butt.setTitle("DeliverdOrder", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var SendedOrder: UIButton = {
        let butt = UIButton()
        butt.setTitle("has Sented", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var progressOrder: UIButton = {
        let butt = UIButton()
        butt.setTitle("in progress", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var AllOrder: UIButton = {
        let butt = UIButton()
        butt.setTitle("AllOrder", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var rigistertaped : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
        //        Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    var singtapes : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
        //          Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    var sendtedtapes : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
        //          Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    var progresstedtapes : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
        //          Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    var Alltedtapes : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
        //          Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    
    var viewStack : UIView = {
        let view = UIView()
        //        view.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        view.layer.applySketchShadow()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [CancelOrder, DeliverdOrder,SendedOrder,progressOrder,AllOrder])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        //        stackView.layer.applySketchShadow()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var contantview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        mainView.addSubview(DeliverdOrder)
        NSLayoutConstraint.activate([
            DeliverdOrder.heightAnchor.constraint(equalToConstant: 50),
            ])
        mainView.addSubview(CancelOrder)
        NSLayoutConstraint.activate([
            CancelOrder.heightAnchor.constraint(equalToConstant: 50),
            ])
        mainView.addSubview(SendedOrder)
        NSLayoutConstraint.activate([
            SendedOrder.heightAnchor.constraint(equalToConstant: 50),
            ])
        mainView.addSubview(progressOrder)
        NSLayoutConstraint.activate([
            progressOrder.heightAnchor.constraint(equalToConstant: 50)
            ])
        mainView.addSubview(AllOrder)
        NSLayoutConstraint.activate([
            AllOrder.heightAnchor.constraint(equalToConstant: 50)
            ])
        
        mainView.addSubview(viewStack)
        NSLayoutConstraint.activate([
            viewStack.topAnchor.constraint(equalTo: mainView.topAnchor, constant: -3),
            viewStack.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            viewStack.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            viewStack.heightAnchor.constraint(equalToConstant: 53)
            ])
        
        viewStack.addSubview(stackViewAcount)
        NSLayoutConstraint.activate([
            stackViewAcount.topAnchor.constraint(equalTo: viewStack.topAnchor, constant: 0),
            stackViewAcount.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            stackViewAcount.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            stackViewAcount.heightAnchor.constraint(equalToConstant: 53)
            ])
        mainView.addSubview(rigistertaped)
        NSLayoutConstraint.activate([
            rigistertaped.topAnchor.constraint(equalTo: DeliverdOrder.bottomAnchor, constant: 0),
            rigistertaped.leadingAnchor.constraint(equalTo: DeliverdOrder.leadingAnchor, constant: 0),
            rigistertaped.trailingAnchor.constraint(equalTo: DeliverdOrder.trailingAnchor, constant: 0),
            rigistertaped.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(singtapes)
        NSLayoutConstraint.activate([
            singtapes.topAnchor.constraint(equalTo: CancelOrder.bottomAnchor, constant: 0),
            singtapes.leadingAnchor.constraint(equalTo: CancelOrder.leadingAnchor, constant: 0),
            singtapes.trailingAnchor.constraint(equalTo: CancelOrder.trailingAnchor, constant: 0),
            singtapes.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(sendtedtapes)
        NSLayoutConstraint.activate([
            sendtedtapes.topAnchor.constraint(equalTo: SendedOrder.bottomAnchor, constant: 0),
            sendtedtapes.leadingAnchor.constraint(equalTo: SendedOrder.leadingAnchor, constant: 0),
            sendtedtapes.trailingAnchor.constraint(equalTo: SendedOrder.trailingAnchor, constant: 0),
            sendtedtapes.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(progresstedtapes)
        NSLayoutConstraint.activate([
            progresstedtapes.topAnchor.constraint(equalTo: progressOrder.bottomAnchor, constant: 0),
            progresstedtapes.leadingAnchor.constraint(equalTo: progressOrder.leadingAnchor, constant: 0),
            progresstedtapes.trailingAnchor.constraint(equalTo: progressOrder.trailingAnchor, constant: 0),
            progresstedtapes.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(Alltedtapes)
        NSLayoutConstraint.activate([
            Alltedtapes.topAnchor.constraint(equalTo: AllOrder.bottomAnchor, constant: 0),
            Alltedtapes.leadingAnchor.constraint(equalTo: AllOrder.leadingAnchor, constant: 0),
            Alltedtapes.trailingAnchor.constraint(equalTo: AllOrder.trailingAnchor, constant: 0),
            Alltedtapes.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(contantview)
        NSLayoutConstraint.activate([
            contantview.topAnchor.constraint(equalTo: stackViewAcount.bottomAnchor, constant: 0),
            contantview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            contantview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            contantview.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
    }

}
