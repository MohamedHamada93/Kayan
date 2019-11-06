//
//  ProgreesCell.swift
//  Kayan
//
//  Created by Moe on 11/4/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProgreesCell: UITableViewCell {

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
//    var MoreOrderLabel : UILabel = {
//        let label = UILabel()
//        label.text = "+2"
//        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
//        label.font = UIFont.CairoRegular(of: 15)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    var anotherOrderLabel : UILabel = {
//        let label = UILabel()
//        label.text = "Anthor Order"
//        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
//        label.font = UIFont.CairoRegular(of: 15)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    var line : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var ByLabel : UILabel = {
        let label = UILabel()
        label.text = "over"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var ByNameLabel : UILabel = {
        let label = UILabel()
        label.text = "Aramex"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    var numberTrackLabel : UILabel = {
//        let label = UILabel()
//        label.text = "Number tracking"
//        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
//        label.font = UIFont.CairoRegular(of: 15)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    var TrackinLabel : UILabel = {
//        let label = UILabel()
//        label.text = "#024B74"
//        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
//        label.font = UIFont.CairoBold(of: 15)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
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
            NumberLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            NumberLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            NumberLabel.heightAnchor.constraint(equalToConstant: 17)
            ])
        tablecell.addSubview(firstOrderLabel)
        NSLayoutConstraint.activate([
            firstOrderLabel.topAnchor.constraint(equalTo: NumberLabel.bottomAnchor, constant: 5),
            firstOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            firstOrderLabel.heightAnchor.constraint(equalToConstant: 17)
            ])
        
        tablecell.addSubview(secondOrderLabel)
        NSLayoutConstraint.activate([
            secondOrderLabel.topAnchor.constraint(equalTo: firstOrderLabel.bottomAnchor, constant: 5),
            secondOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            secondOrderLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
//        tablecell.addSubview(MoreOrderLabel)
//        NSLayoutConstraint.activate([
//            MoreOrderLabel.topAnchor.constraint(equalTo: secondOrderLabel.bottomAnchor, constant: 5),
//            MoreOrderLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
//            MoreOrderLabel.heightAnchor.constraint(equalToConstant: 18)
//            ])
//        tablecell.addSubview(anotherOrderLabel)
//        NSLayoutConstraint.activate([
//            anotherOrderLabel.topAnchor.constraint(equalTo: secondOrderLabel.bottomAnchor, constant: 5),
//            anotherOrderLabel.leadingAnchor.constraint(equalTo: MoreOrderLabel.trailingAnchor, constant: 5),
//            anotherOrderLabel.heightAnchor.constraint(equalToConstant: 18)
//            ])
        tablecell.addSubview(line)
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: secondOrderLabel.bottomAnchor, constant: 10),
            line.heightAnchor.constraint(equalToConstant: 1),
            line.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            line.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20)
            ])
        tablecell.addSubview(ByLabel)
        NSLayoutConstraint.activate([
            ByLabel.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 5),
            ByLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
            ByLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        tablecell.addSubview(ByNameLabel)
        NSLayoutConstraint.activate([
            ByNameLabel.topAnchor.constraint(equalTo: ByLabel.topAnchor, constant: 0),
            ByNameLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15),
            ByNameLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
//        tablecell.addSubview(numberTrackLabel)
//        NSLayoutConstraint.activate([
//            numberTrackLabel.topAnchor.constraint(equalTo: ByLabel.bottomAnchor, constant: 5),
//            numberTrackLabel.leadingAnchor.constraint(equalTo: NumberLabel.leadingAnchor, constant: 0),
//            numberTrackLabel.heightAnchor.constraint(equalToConstant: 18)
//            ])
//        tablecell.addSubview(TrackinLabel)
//        NSLayoutConstraint.activate([
//            TrackinLabel.topAnchor.constraint(equalTo: numberTrackLabel.topAnchor, constant: 0),
//            TrackinLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -15)
//            ])
        
    }
    


}
