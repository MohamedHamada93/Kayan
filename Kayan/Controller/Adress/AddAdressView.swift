//
//  AddAdressView.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AddAdressView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    var countryView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var countryLabel : UILabel = {
       let label = UILabel()
        label.text = "country..."
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // Maioror
    var MairorView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var MairorLabel : UILabel = {
        let label = UILabel()
        label.text =  "province..."
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // City
    var CityView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var CityLabel : UILabel = {
        let label = UILabel()
        label.text =  "City..."
        label.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var stackViewCity: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [MairorView,CityView])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.spacing = 20.0
        //        stackView.layer.applySketchShadow()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var AdreesView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var AdressText : UITextField = {
        let text = UITextField()
        text.placeholder = "Adress..."
        
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var adreesButt : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "home"), for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var postalView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textpostal : UITextField = {
        let text = UITextField()
        text.placeholder = "postal..."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var phoneView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var textphone : UITextField = {
        let text = UITextField()
        text.placeholder = "phone..."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    lazy var stackViewphone: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [postalView,phoneView])
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
        mainView.addSubview(nameView)
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
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
        mainView.addSubview(countryView)
        NSLayoutConstraint.activate([
            countryView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 20),
            countryView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            countryView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            countryView.heightAnchor.constraint(equalToConstant: 40)
            ])
        countryView.addSubview(countryLabel)
        NSLayoutConstraint.activate([
            countryLabel.topAnchor.constraint(equalTo: countryView.topAnchor, constant: 10),
            countryLabel.bottomAnchor.constraint(equalTo: countryView.bottomAnchor, constant: -10),
            countryLabel.leadingAnchor.constraint(equalTo: countryView.leadingAnchor, constant: 10),
            countryLabel.trailingAnchor.constraint(equalTo: countryView.trailingAnchor, constant: -10)
            ])
        //
        mainView.addSubview(MairorView)
        NSLayoutConstraint.activate([
//            MairorView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
//            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
//            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            MairorView.heightAnchor.constraint(equalToConstant: 40)
            ])
        MairorView.addSubview(MairorLabel)
        NSLayoutConstraint.activate([
            MairorLabel.topAnchor.constraint(equalTo: MairorView.topAnchor, constant: 10),
            MairorLabel.bottomAnchor.constraint(equalTo: MairorView.bottomAnchor, constant: -10),
            MairorLabel.leadingAnchor.constraint(equalTo: MairorView.leadingAnchor, constant: 10),
            MairorLabel.trailingAnchor.constraint(equalTo: MairorView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(CityView)
        NSLayoutConstraint.activate([
//            CityView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            //            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            //            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            CityView.heightAnchor.constraint(equalToConstant: 40)
            ])
        CityView.addSubview(CityLabel)
        NSLayoutConstraint.activate([
            CityLabel.topAnchor.constraint(equalTo: CityView.topAnchor, constant: 10),
            CityLabel.bottomAnchor.constraint(equalTo: CityView.bottomAnchor, constant: -10),
            CityLabel.leadingAnchor.constraint(equalTo: CityView.leadingAnchor, constant: 10),
            CityLabel.trailingAnchor.constraint(equalTo: CityView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(stackViewCity)
        NSLayoutConstraint.activate([
            stackViewCity.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            stackViewCity.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            stackViewCity.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            stackViewCity.heightAnchor.constraint(equalToConstant: 45)
            ])
        mainView.addSubview(AdreesView)
        NSLayoutConstraint.activate([
            AdreesView.topAnchor.constraint(equalTo: stackViewCity.bottomAnchor, constant: 20),
            AdreesView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            AdreesView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -40),
            AdreesView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(adreesButt)
        NSLayoutConstraint.activate([
            adreesButt.topAnchor.constraint(equalTo: AdreesView.topAnchor, constant: 0),
            adreesButt.bottomAnchor.constraint(equalTo: AdreesView.bottomAnchor, constant: 0),
            adreesButt.leadingAnchor.constraint(equalTo: AdreesView.trailingAnchor, constant: 0),
            adreesButt.widthAnchor.constraint(equalToConstant: 40)
            ])
        AdreesView.addSubview(AdressText)
        NSLayoutConstraint.activate([
            AdressText.topAnchor.constraint(equalTo: AdreesView.topAnchor, constant: 10),
            AdressText.bottomAnchor.constraint(equalTo: AdreesView.bottomAnchor, constant: -10),
            AdressText.leadingAnchor.constraint(equalTo: AdreesView.leadingAnchor, constant: 10),
            AdressText.trailingAnchor.constraint(equalTo: AdreesView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(postalView)
        NSLayoutConstraint.activate([
            //            MairorView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            //            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            //            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            postalView.heightAnchor.constraint(equalToConstant: 40)
            ])
        postalView.addSubview(textpostal)
        NSLayoutConstraint.activate([
            textpostal.topAnchor.constraint(equalTo: postalView.topAnchor, constant: 10),
            textpostal.bottomAnchor.constraint(equalTo: postalView.bottomAnchor, constant: -10),
            textpostal.leadingAnchor.constraint(equalTo: postalView.leadingAnchor, constant: 10),
            textpostal.trailingAnchor.constraint(equalTo: postalView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            //            CityView.topAnchor.constraint(equalTo: countryView.bottomAnchor, constant: 20),
            //            MairorView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 0),
            //            MairorView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: 0),
            phoneView.heightAnchor.constraint(equalToConstant: 40)
            ])
        phoneView.addSubview(textphone)
        NSLayoutConstraint.activate([
            textphone.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 10),
            textphone.bottomAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: -10),
            textphone.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 10),
            textphone.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: -10)
            ])
        mainView.addSubview(stackViewphone)
        NSLayoutConstraint.activate([
            stackViewphone.topAnchor.constraint(equalTo: AdreesView.bottomAnchor, constant: 20),
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
