//
//  EditeNameView.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditeNameView: UIView {

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
    
    var nameView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.cornerRadius = 5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var nameImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var nameLabel : UITextField = {
        let label = UITextField()
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.text = "Ahmed rageb"
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var EditeButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("save", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 13)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.textAlignment = .center
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
    
    var passButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("edite", for: .normal)
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
        mainView.addSubview(profileimage)
        NSLayoutConstraint.activate([
            profileimage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            profileimage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            profileimage.heightAnchor.constraint(equalToConstant: 100),
            profileimage.widthAnchor.constraint(equalToConstant: 100)
            ])
        mainView.addSubview(nameView)
        NSLayoutConstraint.activate([
            nameView.topAnchor.constraint(equalTo: profileimage.bottomAnchor, constant:40),
            nameView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            nameView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            nameView.heightAnchor.constraint(equalToConstant: 40)
            ])
        nameView.addSubview(nameImage)
        NSLayoutConstraint.activate([
            nameImage.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
            nameImage.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 10),
            nameImage.heightAnchor.constraint(equalToConstant: 25),
            nameImage.widthAnchor.constraint(equalToConstant: 25)
            ])
        nameView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
            nameLabel.leadingAnchor.constraint(equalTo: nameImage.trailingAnchor, constant: 20),
            nameLabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        nameView.addSubview(EditeButt)
        NSLayoutConstraint.activate([
            EditeButt.centerYAnchor.constraint(equalTo: nameView.centerYAnchor, constant: 0),
            EditeButt.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -1),
            EditeButt.widthAnchor.constraint(equalToConstant: 100)
            ])
        // pass
        mainView.addSubview(passwordView)
        NSLayoutConstraint.activate([
            passwordView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant:10),
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
        
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            confirmBT.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            confirmBT.heightAnchor.constraint(equalToConstant: 50)
            ])
    }

}
