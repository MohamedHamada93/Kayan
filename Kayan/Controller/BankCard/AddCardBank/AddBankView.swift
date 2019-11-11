//
//  AddBankView.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AddBankView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var VisaView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textVisa : UITextField = {
        let text = UITextField()
        text.placeholder = "Visa..."
        
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var nameView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textName : UITextField = {
        let text = UITextField()
        text.placeholder = "name..."
        
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var BinView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textBin : UITextField = {
        let text = UITextField()
        text.placeholder = "Bin Number..."
        
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    var ExpView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textExp : UITextField = {
        let text = UITextField()
        text.placeholder = "Expire Date..."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var CvcView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textCvc : UITextField = {
        let text = UITextField()
        text.placeholder = "CVC number..."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    lazy var stackViewphone: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [ExpView,CvcView])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 20.0
        //        stackView.layer.applySketchShadow()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("confirm", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 15)
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
        mainView.addSubview(VisaView)
        NSLayoutConstraint.activate([
            VisaView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            VisaView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            VisaView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            VisaView.heightAnchor.constraint(equalToConstant: 40)
            ])
        VisaView.addSubview(textVisa)
        NSLayoutConstraint.activate([
            textVisa.topAnchor.constraint(equalTo: VisaView.topAnchor, constant: 10),
            textVisa.bottomAnchor.constraint(equalTo: VisaView.bottomAnchor, constant: -10),
            textVisa.leadingAnchor.constraint(equalTo: VisaView.leadingAnchor, constant: 10),
            textVisa.trailingAnchor.constraint(equalTo: VisaView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(nameView)
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: VisaView.bottomAnchor, constant: 10),
            nameView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            nameView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            nameView.heightAnchor.constraint(equalToConstant: 40)
            ])
        nameView.addSubview(textName)
        NSLayoutConstraint.activate([
            textName.topAnchor.constraint(equalTo: nameView.topAnchor, constant: 10),
            textName.bottomAnchor.constraint(equalTo: nameView.bottomAnchor, constant: -10),
            textName.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 10),
            textName.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(BinView)
        NSLayoutConstraint.activate([
            BinView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10),
            BinView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            BinView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            BinView.heightAnchor.constraint(equalToConstant: 40)
            ])
        BinView.addSubview(textBin)
        NSLayoutConstraint.activate([
            textBin.topAnchor.constraint(equalTo: BinView.topAnchor, constant: 10),
            textBin.bottomAnchor.constraint(equalTo: BinView.bottomAnchor, constant: -10),
            textBin.leadingAnchor.constraint(equalTo: BinView.leadingAnchor, constant: 10),
            textBin.trailingAnchor.constraint(equalTo: BinView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(ExpView)
        NSLayoutConstraint.activate([
            //            MairorView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            //            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            //            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            ExpView.heightAnchor.constraint(equalToConstant: 40)
            ])
        ExpView.addSubview(textExp)
        NSLayoutConstraint.activate([
            textExp.topAnchor.constraint(equalTo: ExpView.topAnchor, constant: 10),
            textExp.bottomAnchor.constraint(equalTo: ExpView.bottomAnchor, constant: -10),
            textExp.leadingAnchor.constraint(equalTo: ExpView.leadingAnchor, constant: 10),
            textExp.trailingAnchor.constraint(equalTo: ExpView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(CvcView)
        NSLayoutConstraint.activate([
            //            CityView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            //            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            //            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            CvcView.heightAnchor.constraint(equalToConstant: 40)
            ])
        CvcView.addSubview(textCvc)
        NSLayoutConstraint.activate([
            textCvc.topAnchor.constraint(equalTo: CvcView.topAnchor, constant: 10),
            textCvc.bottomAnchor.constraint(equalTo: CvcView.bottomAnchor, constant: -10),
            textCvc.leadingAnchor.constraint(equalTo: CvcView.leadingAnchor, constant: 10),
            textCvc.trailingAnchor.constraint(equalTo: CvcView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(stackViewphone)
        NSLayoutConstraint.activate([
            stackViewphone.topAnchor.constraint(equalTo: BinView.bottomAnchor, constant: 10),
            stackViewphone.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            stackViewphone.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            stackViewphone.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            confirmBT.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            confirmBT.heightAnchor.constraint(equalToConstant: 50)
            ])
        
    }

}
