//
//  PeriodTimeView.swift
//  Kayan
//
//  Created by Moe on 10/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PeriodTimeView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainimage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "5779-004-491EE13C")
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var dayLabel : UILabel = {
       let label = UILabel()
        label.text = "14 day"
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var dayRole : UILabel = {
        let label = UILabel()
        label.text = "you can return any thing you buy before 14 days jljgjkhjhjhkjkjbjvhjvb"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var FreeLabel : UILabel = {
        let label = UILabel()
        label.text = "free services"
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var freeservices : UILabel = {
        let label = UILabel()
        label.text = "you can return any thing you buy before 14 dayst tftfttftftftftftftftftftftftftftffgfhjhgkjhgkjhfflfhhgjkhgjhgljhghghjghghghjghghjgjhgjjkgjkghjhjkjkhghjvhjhgghgfdfg"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var day30Label : UILabel = {
        let label = UILabel()
        label.text = "30 day to recover "
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var recoverservices : UILabel = {
        let label = UILabel()
        label.text = "you can return any thing you buy before 14 dayst tftfttftftftftftftftftftftftftftffgfhjhgkjhgkjhfflfhhgjkhgjhgljhghghjghghghjghghjgjhgjjkgjkghjhjkjkhghjvhjhgghgfdfg"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var grentyLabel : UILabel = {
        let label = UILabel()
        label.text = "Quality assurance"
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var Grentyservices : UILabel = {
        let label = UILabel()
        label.text = "you can return any thing you buy before 14 dayst tftfttftftftftftftftftftftftftftffgfhjhgkjhgkjhfflfhhgjkhgjhgljhghghjghghghjghghjgjhgjjkgjkghjhjkjkhghjvhjhgghgfdfg"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        label.numberOfLines = 0
        
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
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
        mainView.addSubview(mainimage)
        NSLayoutConstraint.activate([
            mainimage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 40),
            mainimage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            mainView.heightAnchor.constraint(equalToConstant: 95),
            mainView.widthAnchor.constraint(equalToConstant: 85)
            ])
        mainView.addSubview(dayLabel)
        NSLayoutConstraint.activate([
            dayLabel.topAnchor.constraint(equalTo: mainimage.bottomAnchor, constant: 25),
            dayLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            
            ])
        mainView.addSubview(dayRole)
        NSLayoutConstraint.activate([
            dayRole.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 0),
            dayRole.leadingAnchor.constraint(equalTo: dayLabel.leadingAnchor, constant: 0),
            dayRole.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        mainView.addSubview(FreeLabel)
        NSLayoutConstraint.activate([
            FreeLabel.topAnchor.constraint(equalTo: dayRole.bottomAnchor, constant: 0),
            FreeLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            
            ])
        mainView.addSubview(freeservices)
        NSLayoutConstraint.activate([
            freeservices.topAnchor.constraint(equalTo: FreeLabel.bottomAnchor, constant: 0),
            freeservices.leadingAnchor.constraint(equalTo: FreeLabel.leadingAnchor, constant: 0),
            freeservices.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        mainView.addSubview(day30Label)
        NSLayoutConstraint.activate([
            day30Label.topAnchor.constraint(equalTo: freeservices.bottomAnchor, constant: 0),
            day30Label.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            
            ])
        mainView.addSubview(recoverservices)
        NSLayoutConstraint.activate([
            recoverservices.topAnchor.constraint(equalTo: day30Label.bottomAnchor, constant: 0),
            recoverservices.leadingAnchor.constraint(equalTo: day30Label.leadingAnchor, constant: 0),
            recoverservices.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        mainView.addSubview(grentyLabel)
        NSLayoutConstraint.activate([
            grentyLabel.topAnchor.constraint(equalTo: recoverservices.bottomAnchor, constant: 0),
            grentyLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 16),
            
            ])
        mainView.addSubview(Grentyservices)
        NSLayoutConstraint.activate([
            Grentyservices.topAnchor.constraint(equalTo: grentyLabel.bottomAnchor, constant: 0),
            Grentyservices.leadingAnchor.constraint(equalTo: recoverservices.leadingAnchor, constant: 0),
            Grentyservices.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        
    }
    

}
