//
//  BankCell.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class BankCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Ahmed ragab"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cardNum : UILabel = {
        let label = UILabel()
        label.text = "xxx 1234"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var ExpNumber : UILabel = {
        let label = UILabel()
        label.text = "Exp 12/23"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var addButton : UIButton = {
       let butt = UIButton()
        butt.setTitle("delet", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 14)
        butt.setTitleColor(#colorLiteral(red: 1, green: 0.2941176471, blue: 0.2941176471, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var EditButton : UIButton = {
        let butt = UIButton()
        butt.setTitle("edit", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 14)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
        tablecell.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        tablecell.addSubview(cardNum)
        NSLayoutConstraint.activate([
            cardNum.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            cardNum.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 0),
            cardNum.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -90)
            ])
        tablecell.addSubview(ExpNumber)
        NSLayoutConstraint.activate([
            ExpNumber.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 0),
            ExpNumber.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            ExpNumber.widthAnchor.constraint(equalToConstant: 80)
            ])
        
        tablecell.addSubview(addButton)
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: cardNum.bottomAnchor, constant: 0),
            addButton.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            addButton.widthAnchor.constraint(equalToConstant: 45),
            addButton.heightAnchor.constraint(equalToConstant: 30)
            ])
        tablecell.addSubview(EditButton)
        NSLayoutConstraint.activate([
            EditButton.topAnchor.constraint(equalTo: cardNum.bottomAnchor, constant: 0),
            EditButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: 0),
            EditButton.widthAnchor.constraint(equalToConstant: 45),
            EditButton.heightAnchor.constraint(equalToConstant: 30)
            ])
    }

}
