//
//  ProductCells.swift
//  Kayan
//
//  Created by Moe on 11/10/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProductCells: UICollectionViewCell {
    
    var ProductImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "image base")
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var favoriteBut : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "favourite"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var saveView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.9254901961, blue: 0.9450980392, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var saveLabel : UILabel = {
        let label = UILabel()
        label.text = "1 year agent warranty"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        label.font = UIFont.CairoRegular(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var DescrLabel : UILabel = {
        let label = UILabel()
        label.text = "Honor 8i 32GB Phone - Blue"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var discountLabel : UILabel = {
        let label = UILabel()
        label.text = "600.00 SR"
        label.textColor = #colorLiteral(red: 0.4274509804, green: 0.5921568627, blue: 0.6823529412, alpha: 1)
        label.font = UIFont.CairoRegular(of: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var discLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4274509804, green: 0.5921568627, blue: 0.6823529412, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var percentDisco : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.2941176471, blue: 0.2941176471, alpha: 1)
        view.layer.cornerRadius = 6
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var percentLabel : UILabel = {
        let label = UILabel()
        label.text = "discount"
        label.font = UIFont.CairoBold(of: 9)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var percent : UILabel = {
        let label = UILabel()
        label.text = "30%"
        label.font = UIFont.CairoBold(of: 10)
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var newPrice : UILabel = {
        let label = UILabel()
        label.text = "544.00 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        //        label.textAlignment = .center
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Choosebutt : UIButton = {
        let butt = UIButton()
        butt.setTitle("Select options", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.layer.borderWidth = 1
        butt.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        butt.layer.cornerRadius = 10
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView(){
        contentView.addSubview(ProductImage)
        NSLayoutConstraint.activate([
            ProductImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            ProductImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            ProductImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            ProductImage.heightAnchor.constraint(equalToConstant: 160)
            ])
        contentView.addSubview(favoriteBut)
        NSLayoutConstraint.activate([
            favoriteBut.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            favoriteBut.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            favoriteBut.heightAnchor.constraint(equalToConstant: 20),
            favoriteBut.widthAnchor.constraint(equalToConstant: 20)
            
            ])
        contentView.addSubview(saveView)
        NSLayoutConstraint.activate([
            saveView.topAnchor.constraint(equalTo: ProductImage.bottomAnchor, constant: 5),
            saveView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            saveView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            saveView.heightAnchor.constraint(equalToConstant: 20)
            ])
        contentView.addSubview(saveLabel)
        NSLayoutConstraint.activate([
            saveLabel.centerYAnchor.constraint(equalTo: saveView.centerYAnchor, constant: 0),
            saveLabel.centerXAnchor.constraint(equalTo: saveView.centerXAnchor, constant: 0),
            saveLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0)
            ])
        contentView.addSubview(DescrLabel)
        NSLayoutConstraint.activate([
            DescrLabel.topAnchor.constraint(equalTo: saveView.bottomAnchor, constant: 10),
            DescrLabel.leadingAnchor.constraint(equalTo: saveView.leadingAnchor, constant: 20),
            DescrLabel.heightAnchor.constraint(equalToConstant: 55),
            DescrLabel.trailingAnchor.constraint(equalTo: saveView.trailingAnchor, constant: -10)
            ])
        contentView.addSubview(discountLabel)
        NSLayoutConstraint.activate([
            discountLabel.topAnchor.constraint(equalTo: DescrLabel.bottomAnchor, constant: 0),
            discountLabel.leadingAnchor.constraint(equalTo: DescrLabel.leadingAnchor, constant: 0),
            
            ])
        contentView.addSubview(discLine)
        NSLayoutConstraint.activate([
            discLine.centerYAnchor.constraint(equalTo: discountLabel.centerYAnchor, constant: 0),
            discLine.leadingAnchor.constraint(equalTo: discountLabel.leadingAnchor, constant: 0),
            discLine.trailingAnchor.constraint(equalTo: discountLabel.trailingAnchor, constant: 0)
            ])
        contentView.addSubview(percentDisco)
        NSLayoutConstraint.activate([
            percentDisco.topAnchor.constraint(equalTo: discountLabel.topAnchor, constant: 0),
            percentDisco.leadingAnchor.constraint(equalTo: discountLabel.trailingAnchor, constant: 10),
            percentDisco.heightAnchor.constraint(equalToConstant: 18),
            percentDisco.widthAnchor.constraint(equalToConstant: 65)
            ])
        percentDisco.addSubview(percentLabel)
        NSLayoutConstraint.activate([
            percentLabel.centerYAnchor.constraint(equalTo: percentDisco.centerYAnchor, constant: 0),
            percentLabel.leadingAnchor.constraint(equalTo: percentDisco.leadingAnchor, constant: 5)
            ])
        percentDisco.addSubview(percent)
        NSLayoutConstraint.activate([
            percent.centerYAnchor.constraint(equalTo: percentDisco.centerYAnchor, constant: 0),
            percent.leadingAnchor.constraint(equalTo: percentLabel.trailingAnchor, constant: 5)
            ])
        contentView.addSubview(newPrice)
        NSLayoutConstraint.activate([
            newPrice.topAnchor.constraint(equalTo: percentLabel.bottomAnchor, constant: 5),
            newPrice.leadingAnchor.constraint(equalTo: discountLabel.leadingAnchor, constant: 0),
            newPrice.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
            ])
        contentView.addSubview(Choosebutt)
        NSLayoutConstraint.activate([
            Choosebutt.topAnchor.constraint(equalTo: newPrice.bottomAnchor, constant: 0),
            Choosebutt.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: 0),
            Choosebutt.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            Choosebutt.heightAnchor.constraint(equalToConstant: 30)
            ])
    }
    
}

