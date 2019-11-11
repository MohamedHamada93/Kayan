//
//  DiscountKopen.swift
//  Kayan
//
//  Created by Moe on 11/6/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DiscountKopen: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var DicountLabel: UILabel = {
       let label = UILabel()
        label.text = "Your discount voucher is:"
        label.font = UIFont.CairoBold(of: 16)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var CodeView: UIView = {
       let view = UIView()
        view.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var CopyCode : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "saudi flag")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var DicountCode : UILabel = {
       let label = UILabel()
        label.text = "k-80745163"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 24)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var orderView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var OrderDate : UILabel = {
       let label = UILabel()
        label.text = "order date"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ExpireDate : UILabel = {
        let label = UILabel()
        label.text = "Expire date"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var orderLabel : UILabel = {
        let label = UILabel()
        label.text = "day26 march 2019"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ExpireLabel : UILabel = {
        let label = UILabel()
        label.text = "day26 march 2019"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var line : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var orderStatus : UILabel = {
        let label = UILabel()
        label.text = "order status"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var UseDate : UILabel = {
        let label = UILabel()
        label.text = "Use date"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var statusLabel : UILabel = {
        let label = UILabel()
        label.text = "has been used"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var usesLabel : UILabel = {
        let label = UILabel()
        label.text = "day26 march 2019"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
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
     mainView.addSubview(DicountLabel)
        NSLayoutConstraint.activate([
            DicountLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            DicountLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            DicountLabel.heightAnchor.constraint(equalToConstant: 18),
            
            ])
        mainView.addSubview(CodeView)
        NSLayoutConstraint.activate([
            CodeView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            CodeView.topAnchor.constraint(equalTo: DicountLabel.bottomAnchor, constant: 20),
            CodeView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50),
            CodeView.heightAnchor.constraint(equalToConstant: 60)
            ])
        CodeView.addSubview(CopyCode)
        NSLayoutConstraint.activate([
            CopyCode.centerYAnchor.constraint(equalTo: CodeView.centerYAnchor, constant: 0),
            CopyCode.topAnchor.constraint(equalTo: CodeView.topAnchor, constant: 10),
            CopyCode.leadingAnchor.constraint(equalTo: CodeView.leadingAnchor, constant: 20)
            ])
        mainView.addSubview(DicountCode)
        NSLayoutConstraint.activate([
            DicountCode.topAnchor.constraint(equalTo: CopyCode.topAnchor, constant: 0),
            DicountCode.trailingAnchor.constraint(equalTo: CodeView.trailingAnchor, constant: -20),
            DicountCode.centerYAnchor.constraint(equalTo: CodeView.centerYAnchor, constant: 0)
            ])
        mainView.addSubview(orderView)
        NSLayoutConstraint.activate([
            orderView.topAnchor.constraint(equalTo: CodeView.bottomAnchor, constant: 30),
            orderView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            orderView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            orderView.heightAnchor.constraint(equalToConstant: 165)
            ])
        orderView.addSubview(OrderDate)
        NSLayoutConstraint.activate([
            OrderDate.topAnchor.constraint(equalTo: orderView.topAnchor, constant: 20),
            OrderDate.leadingAnchor.constraint(equalTo: orderView.leadingAnchor, constant: 20),
            
            ])
        orderView.addSubview(ExpireDate)
        NSLayoutConstraint.activate([
            ExpireDate.topAnchor.constraint(equalTo: orderView.topAnchor, constant: 20),
            ExpireDate.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -80)
            ])
        
        orderView.addSubview(orderLabel)
        NSLayoutConstraint.activate([
            orderLabel.topAnchor.constraint(equalTo: OrderDate.bottomAnchor, constant: 0),
            orderLabel.leadingAnchor.constraint(equalTo: OrderDate.leadingAnchor, constant: 0)
            ])
        
        orderView.addSubview(ExpireLabel)
        NSLayoutConstraint.activate([
            ExpireLabel.topAnchor.constraint(equalTo: ExpireDate.bottomAnchor, constant: 0),
            ExpireLabel.leadingAnchor.constraint(equalTo: ExpireDate.leadingAnchor, constant: 0)
            ])
        orderView.addSubview(line)
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: ExpireLabel.bottomAnchor, constant: 5),
            line.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            line.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            line.heightAnchor.constraint(equalToConstant: 1)
            ])
        orderView.addSubview(orderStatus)
        NSLayoutConstraint.activate([
            orderStatus.topAnchor.constraint(equalTo: line.topAnchor, constant: 10),
            orderStatus.leadingAnchor.constraint(equalTo: orderView.leadingAnchor, constant: 20),
            
            ])
        orderView.addSubview(UseDate)
        NSLayoutConstraint.activate([
            UseDate.topAnchor.constraint(equalTo: line.topAnchor, constant: 10),
            UseDate.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -80)
            ])
        
        orderView.addSubview(statusLabel)
        NSLayoutConstraint.activate([
            statusLabel.topAnchor.constraint(equalTo: orderStatus.bottomAnchor, constant: 0),
            statusLabel.leadingAnchor.constraint(equalTo: OrderDate.leadingAnchor, constant: 0)
            ])
        orderView.addSubview(usesLabel)
        NSLayoutConstraint.activate([
            usesLabel.topAnchor.constraint(equalTo: UseDate.bottomAnchor, constant: 0),
            usesLabel.leadingAnchor.constraint(equalTo: ExpireDate.leadingAnchor, constant: 0)
            ])
    }

}
