//
//  CancelCell.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CancelCell: UITableViewCell {

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
            NumberLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 5),
            NumberLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20)
            ])
        tablecell.addSubview(firstOrderLabel)
        NSLayoutConstraint.activate([
            firstOrderLabel.topAnchor.constraint(equalTo: NumberLabel.bottomAnchor, constant: 0),
            firstOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0)
            ])
        
        tablecell.addSubview(secondOrderLabel)
        NSLayoutConstraint.activate([
            secondOrderLabel.topAnchor.constraint(equalTo: firstOrderLabel.bottomAnchor, constant: 0),
            secondOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0)
            ])
        
    }

}
