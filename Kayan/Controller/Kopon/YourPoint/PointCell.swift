//
//  PointCell.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PointCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var pointsLabel : UILabel = {
       let label = UILabel()
        label.text = "+160"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var  OrderNumber: UILabel = {
        let label = UILabel()
        label.text = "Order number"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var  Orderstatus: UILabel = {
        let label = UILabel()
        label.text = "Delivered 7 October 2019"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var DetailsButt : UIButton = {
       let butt = UIButton()
        butt.setTitle("Details", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 16)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var showButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("show Kopon", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 16)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        butt.isHidden = true
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
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
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        tablecell.addSubview(pointsLabel)
        NSLayoutConstraint.activate([
            pointsLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 16),
            pointsLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20)
            ])
        tablecell.addSubview(OrderNumber)
        NSLayoutConstraint.activate([
            OrderNumber.topAnchor.constraint(equalTo: pointsLabel.topAnchor, constant: 0),
            OrderNumber.leadingAnchor.constraint(equalTo: pointsLabel.trailingAnchor, constant: 20)
            ])
        tablecell.addSubview(Orderstatus)
        NSLayoutConstraint.activate([
            Orderstatus.topAnchor.constraint(equalTo: OrderNumber.bottomAnchor, constant: 0),
            Orderstatus.leadingAnchor.constraint(equalTo: OrderNumber.leadingAnchor, constant: 0),
            
            ])
        tablecell.addSubview(DetailsButt)
        NSLayoutConstraint.activate([
            DetailsButt.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            DetailsButt.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            DetailsButt.widthAnchor.constraint(equalToConstant: 60)
            ])
        tablecell.addSubview(showButt)
        NSLayoutConstraint.activate([
            showButt.centerYAnchor.constraint(equalTo: tablecell.centerYAnchor, constant: 0),
            showButt.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            showButt.widthAnchor.constraint(equalToConstant: 60)
            ])
        
    }
}
