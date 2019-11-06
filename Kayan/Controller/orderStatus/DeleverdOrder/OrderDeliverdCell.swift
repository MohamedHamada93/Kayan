//
//  OrderDeliverdCell.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderDeliverdCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var NumberLabel : UILabel = {
        let label = UILabel()
        label.text = "طلب رقم 123456"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var firstOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "2X woman chose"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var secondOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "2X woman chose"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var MoreOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "+2"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var anotherOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "Anthor Order"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var line : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var totalOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "total"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var totalPriceLabel : UILabel = {
        let label = UILabel()
        label.text = "263.59 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var statusOrderLabel : UILabel = {
        let label = UILabel()
        label.text = "status Order"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var deliverdLabel : UILabel = {
        let label = UILabel()
        label.text = "Deliver in 29 aug"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        setupview()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(NumberLabel)
        NSLayoutConstraint.activate([
            NumberLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            NumberLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            NumberLabel.heightAnchor.constraint(equalToConstant: 17)
            ])
        tablecell.addSubview(firstOrderLabel)
        NSLayoutConstraint.activate([
            firstOrderLabel.topAnchor.constraint(equalTo: NumberLabel.bottomAnchor, constant: 5),
            firstOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
              firstOrderLabel.heightAnchor.constraint(equalToConstant: 17)
            ])
        
        tablecell.addSubview(secondOrderLabel)
        NSLayoutConstraint.activate([
            secondOrderLabel.topAnchor.constraint(equalTo: firstOrderLabel.bottomAnchor, constant: 5),
            secondOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            secondOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(MoreOrderLabel)
        NSLayoutConstraint.activate([
            MoreOrderLabel.topAnchor.constraint(equalTo: secondOrderLabel.bottomAnchor, constant: 5),
            MoreOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            MoreOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(anotherOrderLabel)
        NSLayoutConstraint.activate([
            anotherOrderLabel.topAnchor.constraint(equalTo: secondOrderLabel.bottomAnchor, constant: 5),
            anotherOrderLabel.leadingAnchor.constraint(equalTo: MoreOrderLabel.trailingAnchor, constant: 5),
            anotherOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(line)
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: anotherOrderLabel.bottomAnchor, constant: 10),
            line.heightAnchor.constraint(equalToConstant: 1),
            line.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            line.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        tablecell.addSubview(totalOrderLabel)
        NSLayoutConstraint.activate([
            totalOrderLabel.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 5),
            totalOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            totalOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(totalPriceLabel)
        NSLayoutConstraint.activate([
            totalPriceLabel.topAnchor.constraint(equalTo: totalOrderLabel.topAnchor, constant: 0),
            totalPriceLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15),
            totalPriceLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(statusOrderLabel)
        NSLayoutConstraint.activate([
            statusOrderLabel.topAnchor.constraint(equalTo: totalOrderLabel.bottomAnchor, constant: 5),
            statusOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            statusOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(deliverdLabel)
        NSLayoutConstraint.activate([
            deliverdLabel.topAnchor.constraint(equalTo: statusOrderLabel.topAnchor, constant: 0),
            deliverdLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15)
            ])
        
    }

}
