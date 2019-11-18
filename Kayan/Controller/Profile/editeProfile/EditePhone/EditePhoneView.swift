//
//  EditePhoneView.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditePhoneView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var profileimage : UIImageView = {
        let image = UIImageView()
        //        image.image = UIImage(named: "")
        image.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        image.layer.cornerRadius = 50
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    // phone
    var phoneView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var editPhoto : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "edit"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var phoneImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "phone")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var phoneLabel : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "1234543213"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // pass
    var passwordView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var passImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var passLabel : UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "Password"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //    var passButt : UIButton = {
    //        let butt = UIButton()
    //        butt.setTitle("edite", for: .normal)
    //        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
    //        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
    //        butt.titleLabel?.textAlignment = .center
    //
    //        butt.translatesAutoresizingMaskIntoConstraints = false
    //        return butt
    //    }()
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("save", for: .normal)
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
        // phone
        mainView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.topAnchor.constraint(equalTo: mainView.topAnchor, constant:40),
            phoneView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            phoneView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            phoneView.heightAnchor.constraint(equalToConstant: 40)
            ])
        phoneView.addSubview(phoneImage)
        NSLayoutConstraint.activate([
            phoneImage.centerYAnchor.constraint(equalTo: phoneView.centerYAnchor, constant: 0),
            phoneImage.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 10),
            phoneImage.heightAnchor.constraint(equalToConstant: 25),
            phoneImage.widthAnchor.constraint(equalToConstant: 25)
            ])
        phoneView.addSubview(phoneLabel)
        NSLayoutConstraint.activate([
            phoneLabel.centerYAnchor.constraint(equalTo: phoneView.centerYAnchor, constant: 0),
            phoneLabel.leadingAnchor.constraint(equalTo: phoneImage.trailingAnchor, constant: 20)
            ])
        
        // pass
        mainView.addSubview(passwordView)
        NSLayoutConstraint.activate([
            passwordView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant:10),
            passwordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            passwordView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            passwordView.heightAnchor.constraint(equalToConstant: 40)
            ])
        passwordView.addSubview(passImage)
        NSLayoutConstraint.activate([
            passImage.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor, constant: 0),
            passImage.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 10),
            passImage.heightAnchor.constraint(equalToConstant: 25),
            passImage.widthAnchor.constraint(equalToConstant: 25)
            ])
        passwordView.addSubview(passLabel)
        NSLayoutConstraint.activate([
            passLabel.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor, constant: 0),
            passLabel.leadingAnchor.constraint(equalTo: passImage.trailingAnchor, constant: 20),
            passLabel.heightAnchor.constraint(equalToConstant: 20)
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
