//
//  RegisterView.swift
//  Kayan
//
//  Created by Moe on 10/31/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class RegisterView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var registerLAbel : UILabel = {
       let label = UILabel()
        label.text = "To complete the payment, please sign in or register with an entity"
        label.font = UIFont.CairoBold(of: 15)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // name
    var nameview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var nameText : UITextField = {
        let text = UITextField()
        text.placeholder = "name.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var nameImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    // phone
    var phoneview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phoneText : UITextField = {
        let text = UITextField()
        text.placeholder = "phone.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var phoneImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    // email
    var emailview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var emailText : UITextField = {
        let text = UITextField()
        text.placeholder = "email.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var emailImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "password")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
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
    
    var TermLabel : UILabel = {
       let label = UILabel()
        label.text = "  apply"
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var TermButton : UIButton = {
       let butt = UIButton()
        butt.setTitle("Terms and conditions", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 15)
        butt.setTitleColor(#colorLiteral(red: 0, green: 0.6392156863, blue: 1, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [TermButton, TermLabel])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        
        mainView.addSubview(registerLAbel)
        NSLayoutConstraint.activate([
            registerLAbel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            registerLAbel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            registerLAbel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 60)
            ])
        
        mainView.addSubview(nameview)
        NSLayoutConstraint.activate([
            nameview.topAnchor.constraint(equalTo: registerLAbel.bottomAnchor, constant: 20),
            nameview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            nameview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            nameview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(nameImage)
        NSLayoutConstraint.activate([
//            nameImage.topAnchor.constraint(equalTo: nameview.topAnchor, constant: 10),
//            nameImage.bottomAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 10),
            nameImage.centerYAnchor.constraint(equalTo: nameview.centerYAnchor, constant: 0),
            nameImage.heightAnchor.constraint(equalToConstant: 20),
            nameImage.widthAnchor.constraint(equalToConstant: 20),
            nameImage.leadingAnchor.constraint(equalTo: nameview.leadingAnchor, constant: 15)
            ])
        mainView.addSubview(nameText)
        NSLayoutConstraint.activate([
            nameText.centerYAnchor.constraint(equalTo: nameview.centerYAnchor, constant: 0),
            nameText.leadingAnchor.constraint(equalTo: nameImage.trailingAnchor, constant: 15)
            ])
        
        // phone
        mainView.addSubview(phoneview)
        NSLayoutConstraint.activate([
            phoneview.topAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 8),
            phoneview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            phoneview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            phoneview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(phoneImage)
        NSLayoutConstraint.activate([
            //            nameImage.topAnchor.constraint(equalTo: nameview.topAnchor, constant: 10),
            //            nameImage.bottomAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 10),
            phoneImage.centerYAnchor.constraint(equalTo: phoneview.centerYAnchor, constant: 0),
            phoneImage.heightAnchor.constraint(equalToConstant: 20),
            phoneImage.widthAnchor.constraint(equalToConstant: 20),
            phoneImage.leadingAnchor.constraint(equalTo: phoneview.leadingAnchor, constant: 15)
            ])
        mainView.addSubview(phoneText)
        NSLayoutConstraint.activate([
            phoneText.centerYAnchor.constraint(equalTo: phoneview.centerYAnchor, constant: 0),
            phoneText.leadingAnchor.constraint(equalTo: phoneImage.trailingAnchor, constant: 15)
            ])
        
        // email
        mainView.addSubview(emailview)
        NSLayoutConstraint.activate([
            emailview.topAnchor.constraint(equalTo: phoneview.bottomAnchor, constant: 8),
            emailview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            emailview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            emailview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(emailImage)
        NSLayoutConstraint.activate([
            //            nameImage.topAnchor.constraint(equalTo: nameview.topAnchor, constant: 10),
            //            nameImage.bottomAnchor.constraint(equalTo: nameview.bottomAnchor, constant: 10),
            emailImage.centerYAnchor.constraint(equalTo: emailview.centerYAnchor, constant: 0),
            emailImage.heightAnchor.constraint(equalToConstant: 20),
            emailImage.widthAnchor.constraint(equalToConstant: 20),
            emailImage.leadingAnchor.constraint(equalTo: emailview.leadingAnchor, constant: 15)
            ])
        mainView.addSubview(emailText)
        NSLayoutConstraint.activate([
            emailText.centerYAnchor.constraint(equalTo: emailview.centerYAnchor, constant: 0),
            emailText.leadingAnchor.constraint(equalTo: emailImage.trailingAnchor, constant: 15)
            ])
        // password
        mainView.addSubview(passwordview)
        NSLayoutConstraint.activate([
            passwordview.topAnchor.constraint(equalTo: emailview.bottomAnchor, constant: 8),
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
            repasswordview.topAnchor.constraint(equalTo: passwordview.bottomAnchor, constant: 8),
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
        
        mainView.addSubview(stackViewAcount)
        NSLayoutConstraint.activate([
            stackViewAcount.topAnchor.constraint(equalTo: repasswordText.bottomAnchor, constant: 20),
            stackViewAcount.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            stackViewAcount.heightAnchor.constraint(equalToConstant: 45)
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
