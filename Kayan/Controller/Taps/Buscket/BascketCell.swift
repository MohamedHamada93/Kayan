//
//  BascketCell.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class BascketCell: UITableViewCell {
    
    
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
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var DescLabel : UILabel = {
       let label = UILabel()
        label.text = "Round neckline, long sleeves and drawstring"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var PlusButton : UIButton = {
       let butt = UIButton()
        butt.layer.cornerRadius = 12.5
        butt.layer.borderWidth = 1
        butt.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        butt.setTitle("+", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var resiltLabel : UILabel = {
       let label = UILabel()
        label.text = "1"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var MinsButton : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 12.5
        butt.layer.borderWidth = 1
        butt.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        butt.setTitle("-", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var sizeLabe : UILabel = {
       let label = UILabel()
        label.text = "L"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        label.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 5
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var ColorButton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "color"), for: .normal)
        butt.layer.borderWidth = 1
        butt.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        butt.layer.cornerRadius = 5
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var priceLabel : UILabel = {
        let label = UILabel()
        label.text = "239.00 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var dismisButton : UIButton = {
       let button = UIButton()
        button.setImage(UIImage(named: "close"), for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
            MainImage.widthAnchor.constraint(equalToConstant: 100),
            MainImage.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: 0)
            
            ])
        tablecell.addSubview(DescLabel)
        NSLayoutConstraint.activate([
            DescLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            DescLabel.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 10),
            DescLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15)
            ])
        tablecell.addSubview(PlusButton)
        NSLayoutConstraint.activate([
            PlusButton.topAnchor.constraint(equalTo: DescLabel.bottomAnchor, constant: 0),
            PlusButton.widthAnchor.constraint(equalToConstant: 25),
            PlusButton.heightAnchor.constraint(equalToConstant: 25),
            PlusButton.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 10)
            ])
        tablecell.addSubview(resiltLabel)
        NSLayoutConstraint.activate([
            resiltLabel.centerYAnchor.constraint(equalTo: PlusButton.centerYAnchor, constant: 0),
            resiltLabel.leadingAnchor.constraint(equalTo: PlusButton.trailingAnchor, constant: 10),
            
            ])
        tablecell.addSubview(MinsButton)
        NSLayoutConstraint.activate([
            MinsButton.topAnchor.constraint(equalTo: DescLabel.bottomAnchor, constant: 0),
            MinsButton.widthAnchor.constraint(equalToConstant: 25),
            MinsButton.heightAnchor.constraint(equalToConstant: 25),
            MinsButton.leadingAnchor.constraint(equalTo: resiltLabel.trailingAnchor, constant: 10)
            ])
        tablecell.addSubview(sizeLabe)
        NSLayoutConstraint.activate([
            sizeLabe.topAnchor.constraint(equalTo: DescLabel.bottomAnchor, constant: 0),
            sizeLabe.leadingAnchor.constraint(equalTo: MinsButton.trailingAnchor, constant: 10),
            sizeLabe.widthAnchor.constraint(equalToConstant: 30),
            sizeLabe.heightAnchor.constraint(equalToConstant: 27)
            
            ])
        tablecell.addSubview(ColorButton)
        NSLayoutConstraint.activate([
            ColorButton.topAnchor.constraint(equalTo: DescLabel.bottomAnchor, constant: 0),
            ColorButton.leadingAnchor.constraint(equalTo: sizeLabe.trailingAnchor, constant: 10),
            ColorButton.widthAnchor.constraint(equalToConstant: 30),
            ColorButton.heightAnchor.constraint(equalToConstant: 27)
            
            ])
        tablecell.addSubview(priceLabel)
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: PlusButton.bottomAnchor, constant: 10),
            priceLabel.leadingAnchor.constraint(equalTo: MainImage.trailingAnchor, constant: 20)
            ])
        tablecell.addSubview(dismisButton)
        NSLayoutConstraint.activate([
            dismisButton.topAnchor.constraint(equalTo: priceLabel.topAnchor, constant: 0),
            dismisButton.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            dismisButton.widthAnchor.constraint(equalToConstant: 30),
            dismisButton.heightAnchor.constraint(equalToConstant: 30)
            ])

    }

}
