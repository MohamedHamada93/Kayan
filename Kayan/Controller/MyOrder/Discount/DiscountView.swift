//
//  DiscountView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DiscountView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "discount")
        image.clipsToBounds = true
        //        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var DiscountLabelLabel : UILabel = {
        let label = UILabel()
        label.text = "If you have a discount voucher from one of our branches or agents enter it here to get a discount"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoRegular(of: 15)
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
    var dicountText : UITextField = {
        let text = UITextField()
        text.placeholder = "discount.."
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("confirm", for: .normal)
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
        mainView.addSubview(mainimage)
        NSLayoutConstraint.activate([
            mainimage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 50),
            mainimage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            mainimage.heightAnchor.constraint(equalToConstant: 60),
            mainimage.widthAnchor.constraint(equalToConstant: 70)
            
            ])
        mainView.addSubview(DiscountLabelLabel)
        NSLayoutConstraint.activate([
            DiscountLabelLabel.topAnchor.constraint(equalTo: mainimage.bottomAnchor, constant: 20),
            DiscountLabelLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            DiscountLabelLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        
        mainView.addSubview(phoneview)
        NSLayoutConstraint.activate([
            phoneview.topAnchor.constraint(equalTo: DiscountLabelLabel.bottomAnchor, constant: 20),
            phoneview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            phoneview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            phoneview.heightAnchor.constraint(equalToConstant: 40)
            ])

        mainView.addSubview(dicountText)
        NSLayoutConstraint.activate([
            dicountText.centerYAnchor.constraint(equalTo: phoneview.centerYAnchor, constant: 0),
            dicountText.leadingAnchor.constraint(equalTo: phoneview.leadingAnchor, constant: 15)
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
