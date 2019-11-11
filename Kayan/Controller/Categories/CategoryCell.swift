//
//  CategoryCell.swift
//  Kayan
//
//  Created by Moe on 11/10/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    
    var productImag : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "password")
        imag.contentMode = .scaleAspectFit
        imag.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        imag.layer.borderWidth = 1
        imag.layer.borderColor = #colorLiteral(red: 0.8980392157, green: 0.9254901961, blue: 0.9450980392, alpha: 1)
        imag.layer.cornerRadius = 25
        imag.clipsToBounds = true
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var title : UILabel = {
       let label = UILabel()
        label.text = "Mobile"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        contentView.backgroundColor = .clear
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView(){
      contentView.addSubview(productImag)
        NSLayoutConstraint.activate([
            productImag.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
//            productImag.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
//            productImag.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            productImag.heightAnchor.constraint(equalToConstant: 50),
            productImag.widthAnchor.constraint(equalToConstant: 50)
            ])
        contentView.addSubview(title)
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: productImag.bottomAnchor, constant: 5),
            title.centerXAnchor.constraint(equalTo: productImag.centerXAnchor, constant: 0),
            title.widthAnchor.constraint(equalToConstant: 70)
            ])
        
    }
    
    
}
