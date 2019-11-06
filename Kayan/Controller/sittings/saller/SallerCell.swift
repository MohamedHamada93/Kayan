//
//  SallerCell.swift
//  Kayan
//
//  Created by Moe on 10/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SallerCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var checkbutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var uncheckbutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var NameLabel : UILabel = {
        let label = UILabel()
        label.text = "الافتراضي"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16)
        
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
        tablecell.addSubview(checkbutton)
        NSLayoutConstraint.activate([
            checkbutton.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            checkbutton.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            checkbutton.heightAnchor.constraint(equalToConstant: 25),
            checkbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        tablecell.addSubview(uncheckbutton)
        NSLayoutConstraint.activate([
            uncheckbutton.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            uncheckbutton.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            uncheckbutton.heightAnchor.constraint(equalToConstant: 25),
            uncheckbutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        tablecell.addSubview(NameLabel)
        NSLayoutConstraint.activate([
            NameLabel.centerYAnchor.constraint(equalTo: checkbutton.centerYAnchor, constant: 0),
            NameLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        
        
    }

}
