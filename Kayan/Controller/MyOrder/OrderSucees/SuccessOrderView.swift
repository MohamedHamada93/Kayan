//
//  SuccessOrderView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SuccessOrderView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "5779-004-491EE13C")
        image.clipsToBounds = true
        //        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var AddOrederLabel : UILabel = {
       let label = UILabel()
        label.text = "Your request has been successfully added."
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var followOrederLabel : UILabel = {
        let label = UILabel()
        label.text = "You can track your order status on the My Orders page"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
            mainimage.heightAnchor.constraint(equalToConstant: 80),
            mainimage.widthAnchor.constraint(equalToConstant: 110)
            
            ])
        mainView.addSubview(AddOrederLabel)
        NSLayoutConstraint.activate([
            AddOrederLabel.topAnchor.constraint(equalTo: mainimage.bottomAnchor, constant: 20),
            AddOrederLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(followOrederLabel)
        NSLayoutConstraint.activate([
            followOrederLabel.topAnchor.constraint(equalTo: AddOrederLabel.bottomAnchor, constant: 0),
            followOrederLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            followOrederLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30)
            ])
        
    }

}
