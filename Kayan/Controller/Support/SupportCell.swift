//
//  SupportCell.swift
//  Kayan
//
//  Created by Moe on 11/12/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SupportCell: UITableViewCell {

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
    var MainImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "whatsapp")
        img.contentMode = .scaleAspectFit
        img.clipsToBounds = true
        //        img.layer.borderWidth = 1
        //        img.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var titleLabel : UILabel = {
       let label = UILabel()
        label.text = ""
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var descrLabe : UILabel = {
       let label = UILabel()
        label.text = ""
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.numberOfLines = 0 
        
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
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(MainImage)
        NSLayoutConstraint.activate([
            MainImage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            MainImage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            //            MainImage.heightAnchor.constraint(equalToConstant: 100),
            MainImage.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: -20),
            MainImage.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        
        tablecell.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 10),
            ])
        tablecell.addSubview(descrLabe)
        NSLayoutConstraint.activate([
            descrLabe.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            descrLabe.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 10),
            descrLabe.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10)
            ])
    }

}
