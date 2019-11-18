//
//  RateCell.swift
//  Kayan
//
//  Created by Moe on 11/11/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import Cosmos

class RateCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var MainImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "image base")
        img.contentMode = .scaleAspectFill
        img.clipsToBounds = true
//        img.layer.borderWidth = 1
//        img.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()

    var titleLabel : UILabel = {
        let label = UILabel()
        label.text = "MG Store"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var DescLabel : UILabel = {
        let label = UILabel()
        label.text = "The store has a strong relationship with the most prominent in the field of fashion and latest trends who have the greatest influence on the mainstream and cooperate with them so as to provide them with the latest fashion trends for those interested in them."
        label.numberOfLines = 3
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var RatingView : CosmosView = {
       let view = CosmosView()
        view.settings.fillMode = .full
        view.settings.starSize = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        
        tablecell.addSubview(MainImage)
        NSLayoutConstraint.activate([
            MainImage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 0),
            MainImage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 0),
//            MainImage.heightAnchor.constraint(equalToConstant: 100),
            MainImage.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: 0),
            MainImage.widthAnchor.constraint(equalToConstant: 100)
            
            ])
        tablecell.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -5),
            titleLabel.heightAnchor.constraint(equalToConstant: 17)
            
            ])
        tablecell.addSubview(DescLabel)
        NSLayoutConstraint.activate([
            DescLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            DescLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0),
            DescLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            DescLabel.heightAnchor.constraint(equalToConstant: 90)
            ])
        tablecell.addSubview(RatingView)
        NSLayoutConstraint.activate([
            RatingView.topAnchor.constraint(equalTo:DescLabel.bottomAnchor, constant: 0),
            RatingView.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            RatingView.heightAnchor.constraint(equalToConstant: 20)
            ])
        
    }
    
}
