//
//  NewPassView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NewPassView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CodeLabel : UILabel = {
        let label = UILabel()
        label.text = "Code successfully entered"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var passwprdLabel : UILabel = {
        let label = UILabel()
        label.text = "Enter new password"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // password
    var passwordview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var passwordText : UITextField = {
        let text = UITextField()
        text.placeholder = "password.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var passwordImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    // repassword
    var repasswordview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var repasswordText : UITextField = {
        let text = UITextField()
        text.placeholder = "repassword.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var repasswordImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("Sing up", for: .normal)
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
        mainView.addSubview(CodeLabel)
        NSLayoutConstraint.activate([
            CodeLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            CodeLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            CodeLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 60)
            ])
        mainView.addSubview(passwprdLabel)
        NSLayoutConstraint.activate([
            passwprdLabel.topAnchor.constraint(equalTo: CodeLabel.bottomAnchor, constant: 0),
            passwprdLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            passwprdLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 60)
            ])
        
        // password
        mainView.addSubview(passwordview)
        NSLayoutConstraint.activate([
            passwordview.topAnchor.constraint(equalTo: passwprdLabel.bottomAnchor, constant: 20),
            passwordview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            passwordview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            passwordview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(passwordImage)
        NSLayoutConstraint.activate([
            //            nameImage.topAnchor.constraint(equalTo: nameview.topAnchor, constant: 10),
            //            nameImage.bottomAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 10),
            passwordImage.centerYAnchor.constraint(equalTo: passwordview.centerYAnchor, constant: 0),
            passwordImage.heightAnchor.constraint(equalToConstant: 20),
            passwordImage.widthAnchor.constraint(equalToConstant: 20),
            passwordImage.leadingAnchor.constraint(equalTo: passwordview.leadingAnchor, constant: 15)
            ])
        mainView.addSubview(passwordText)
        NSLayoutConstraint.activate([
            passwordText.centerYAnchor.constraint(equalTo: passwordview.centerYAnchor, constant: 0),
            passwordText.leadingAnchor.constraint(equalTo: passwordImage.trailingAnchor, constant: 15)
            ])
        
        // repassword
        mainView.addSubview(repasswordview)
        NSLayoutConstraint.activate([
            repasswordview.topAnchor.constraint(equalTo: passwordview.bottomAnchor, constant: 15),
            repasswordview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            repasswordview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            repasswordview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(repasswordImage)
        NSLayoutConstraint.activate([
            //            nameImage.topAnchor.constraint(equalTo: nameview.topAnchor, constant: 10),
            //            nameImage.bottomAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 10),
            repasswordImage.centerYAnchor.constraint(equalTo: repasswordview.centerYAnchor, constant: 0),
            repasswordImage.heightAnchor.constraint(equalToConstant: 20),
            repasswordImage.widthAnchor.constraint(equalToConstant: 20),
            repasswordImage.leadingAnchor.constraint(equalTo: repasswordview.leadingAnchor, constant: 15)
            ])
        mainView.addSubview(repasswordText)
        NSLayoutConstraint.activate([
            repasswordText.centerYAnchor.constraint(equalTo: repasswordview.centerYAnchor, constant: 0),
            repasswordText.leadingAnchor.constraint(equalTo: repasswordImage.trailingAnchor, constant: 15)
            ])
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
            confirmBT.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            confirmBT.heightAnchor.constraint(equalToConstant: 45)
            ])

        
    }

}
