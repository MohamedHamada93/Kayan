//
//  EditePassView.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditePassView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // password
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
    var passLabel : UITextField = {
        let label = UITextField()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "Password"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var passButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("hide", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.textAlignment = .center
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    // New password
    var newpasswordView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var newpassImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var newpassLabel : UITextField = {
        let label = UITextField()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "new Password"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var newpassButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("show", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.textAlignment = .center
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    // confirm password
    var conpasswordView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var conpassImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var conpassLabel : UITextField = {
        let label = UITextField()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "confirm Password"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var conpassButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("show", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.textAlignment = .center
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
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
        // pass
        mainView.addSubview(passwordView)
        NSLayoutConstraint.activate([
            passwordView.topAnchor.constraint(equalTo: mainView.topAnchor, constant:40),
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
        passwordView.addSubview(passButt)
        NSLayoutConstraint.activate([
            passButt.centerYAnchor.constraint(equalTo: passwordView.centerYAnchor, constant: 0),
            passButt.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: -1),
            passButt.widthAnchor.constraint(equalToConstant: 100)
                    ])
        // newpass
        mainView.addSubview(newpasswordView)
        NSLayoutConstraint.activate([
            newpasswordView.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant:10),
            newpasswordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            newpasswordView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            newpasswordView.heightAnchor.constraint(equalToConstant: 40)
            ])
        newpasswordView.addSubview(newpassImage)
        NSLayoutConstraint.activate([
            newpassImage.centerYAnchor.constraint(equalTo: newpasswordView.centerYAnchor, constant: 0),
            newpassImage.leadingAnchor.constraint(equalTo: newpasswordView.leadingAnchor, constant: 10),
            newpassImage.heightAnchor.constraint(equalToConstant: 25),
            newpassImage.widthAnchor.constraint(equalToConstant: 25)
            ])
        newpasswordView.addSubview(newpassLabel)
        NSLayoutConstraint.activate([
            newpassLabel.centerYAnchor.constraint(equalTo: newpasswordView.centerYAnchor, constant: 0),
            newpassLabel.leadingAnchor.constraint(equalTo: newpassImage.trailingAnchor, constant: 20),
            newpassLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        newpasswordView.addSubview(newpassButt)
        NSLayoutConstraint.activate([
            newpassButt.centerYAnchor.constraint(equalTo: newpasswordView.centerYAnchor, constant: 0),
            newpassButt.trailingAnchor.constraint(equalTo: newpasswordView.trailingAnchor, constant: -1),
            newpassButt.widthAnchor.constraint(equalToConstant: 100)
            ])
        // confirm pass
        mainView.addSubview(conpasswordView)
        NSLayoutConstraint.activate([
            conpasswordView.topAnchor.constraint(equalTo: newpasswordView.bottomAnchor, constant:10),
            conpasswordView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            conpasswordView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            conpasswordView.heightAnchor.constraint(equalToConstant: 40)
            ])
        conpasswordView.addSubview(conpassImage)
        NSLayoutConstraint.activate([
            conpassImage.centerYAnchor.constraint(equalTo: conpasswordView.centerYAnchor, constant: 0),
            conpassImage.leadingAnchor.constraint(equalTo: conpasswordView.leadingAnchor, constant: 10),
            conpassImage.heightAnchor.constraint(equalToConstant: 25),
            conpassImage.widthAnchor.constraint(equalToConstant: 25)
            ])
        conpasswordView.addSubview(conpassLabel)
        NSLayoutConstraint.activate([
            conpassLabel.centerYAnchor.constraint(equalTo: conpasswordView.centerYAnchor, constant: 0),
            conpassLabel.leadingAnchor.constraint(equalTo: conpassImage.trailingAnchor, constant: 20),
            conpassLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        conpasswordView.addSubview(conpassButt)
        NSLayoutConstraint.activate([
            conpassButt.centerYAnchor.constraint(equalTo: conpasswordView.centerYAnchor, constant: 0),
            conpassButt.trailingAnchor.constraint(equalTo: newpasswordView.trailingAnchor, constant: -1),
            conpassButt.widthAnchor.constraint(equalToConstant: 100)
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
