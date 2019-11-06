//
//  SizectionViewCell.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class SizectionViewCell: UICollectionViewCell {
    
    var SizeLabel : UILabel = {
       let label = UILabel()
        label.text = "XL"
        label.layer.borderWidth = 0.1
        label.layer.borderColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        label.layer.cornerRadius = 5
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView(){
        contentView.addSubview(SizeLabel)
        NSLayoutConstraint.activate([
            SizeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            SizeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            SizeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            SizeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
            ])
    }
    
}
