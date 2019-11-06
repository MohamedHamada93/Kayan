//
//  ResendPassView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ResendPassView: UIView {

    
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CodeLabel : UILabel = {
        let label = UILabel()
        label.text = "Enter the registered phone number to recover your password"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoBold(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("Confirm", for: .normal)
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
     
        // phone
        mainView.addSubview(phoneview)
        NSLayoutConstraint.activate([
            phoneview.topAnchor.constraint(equalTo: CodeLabel.bottomAnchor, constant: 30),
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

        
        
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
            confirmBT.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            confirmBT.heightAnchor.constraint(equalToConstant: 45)
            ])
    }


}
