//
//  AdreesCell.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AdreesCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        view.layer.applySketchShadow()
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var name : UILabel = {
       let label = UILabel()
        label.text = "ahmed mohamed rageb"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phone : UILabel = {
        let label = UILabel()
        label.text = "887986875875656"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Adress : UILabel = {
        let label = UILabel()
        label.text = "Lateral Street, off Main Street, Riyadh"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var EditButton : UIButton = {
       let butt = UIButton()
        butt.setTitle("Edit", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 14)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var deletButton : UIButton = {
        let butt = UIButton()
        butt.setTitle("Delet", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 14)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(name)
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            name.heightAnchor.constraint(equalToConstant: 16),
            name.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        tablecell.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 5),
            phone.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            phone.heightAnchor.constraint(equalToConstant: 16),
            phone.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        tablecell.addSubview(Adress)
        NSLayoutConstraint.activate([
            Adress.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 0),
            Adress.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
//            Adress.heightAnchor.constraint(equalToConstant: 16),
            Adress.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -40)
            ])
        tablecell.addSubview(EditButton)
        NSLayoutConstraint.activate([
            EditButton.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: -5),
            EditButton.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            EditButton.widthAnchor.constraint(equalToConstant: 40)
            ])
        tablecell.addSubview(deletButton)
        NSLayoutConstraint.activate([
            deletButton.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: -5),
            deletButton.trailingAnchor.constraint(equalTo: EditButton.leadingAnchor, constant: -20),
            deletButton.widthAnchor.constraint(equalToConstant: 40)
            ])
        
    }
    
}
