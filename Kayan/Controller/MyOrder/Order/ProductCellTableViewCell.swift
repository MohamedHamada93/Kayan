//
//  ProductCellTableViewCell.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProductCellTableViewCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var sizeLabel : UILabel = {
       let label = UILabel()
        label.text = "2X"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var DesLabel : UILabel = {
        let label = UILabel()
        label.text = "Short knot blousekkkkkkk"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pricesLabel : UILabel = {
       let label = UILabel()
        label.text = "239.00 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .right
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        setupview()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(pricesLabel)
        NSLayoutConstraint.activate([
            pricesLabel.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            pricesLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10)
            ])
        tablecell.addSubview(sizeLabel)
        NSLayoutConstraint.activate([
            sizeLabel.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            sizeLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20)
            ])
        tablecell.addSubview(DesLabel)
        NSLayoutConstraint.activate([
            DesLabel.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            DesLabel.leadingAnchor.constraint(equalTo: sizeLabel.trailingAnchor, constant: 10),
            DesLabel.trailingAnchor.constraint(equalTo: pricesLabel.leadingAnchor, constant: -10)
            ])
//        tablecell.addSubview(pricesLabel)
//        NSLayoutConstraint.activate([
//            pricesLabel.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
//            pricesLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10)
//            ])
     
        
    }

}
