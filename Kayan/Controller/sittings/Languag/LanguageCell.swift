//
//  LanguageCell.swift
//  Kayan
//
//  Created by Moe on 10/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class LanguageCell: UITableViewCell {
    
    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var checkCitybutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var uncheckCitybutton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named:"check-box"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var cityLabel : UILabel = {
       let label = UILabel()
        label.text = "السعوديه"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cityImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "saudi flag")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .clear
        setupview()
        
    }
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(checkCitybutton)
        NSLayoutConstraint.activate([
        checkCitybutton.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
        checkCitybutton.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
        checkCitybutton.heightAnchor.constraint(equalToConstant: 25),
        checkCitybutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        tablecell.addSubview(uncheckCitybutton)
        NSLayoutConstraint.activate([
            uncheckCitybutton.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            uncheckCitybutton.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            uncheckCitybutton.heightAnchor.constraint(equalToConstant: 25),
            uncheckCitybutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        tablecell.addSubview(cityLabel)
        NSLayoutConstraint.activate([
            cityLabel.centerYAnchor.constraint(equalTo: checkCitybutton.centerYAnchor, constant: 0),
            cityLabel.leadingAnchor.constraint(equalTo: checkCitybutton.trailingAnchor, constant: 20)
            ])
        tablecell.addSubview(cityImage)
        NSLayoutConstraint.activate([
            cityImage.topAnchor.constraint(equalTo: cityLabel.topAnchor, constant: 0),
            cityImage.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            cityImage.heightAnchor.constraint(equalToConstant: 16),
            cityImage.widthAnchor.constraint(equalToConstant: 24)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
