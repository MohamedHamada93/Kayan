//
//  NoteficationView.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class NoteficationView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var contentView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var noteLabel : UILabel = {
       let label = UILabel()
        label.text = "Offer notifications"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var noteSwitcher : UISwitch = {
       let swit = UISwitch()
        swit.isOn = true
        swit.onTintColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        swit.translatesAutoresizingMaskIntoConstraints = false
        return swit
    }()
    var Line : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var noteupdateLabel : UILabel = {
        let label = UILabel()
        label.text = "Offer notifications"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var updateSwitcher : UISwitch = {
        let swit = UISwitch()
        swit.isOn = true
        swit.onTintColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        swit.translatesAutoresizingMaskIntoConstraints = false
        return swit
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
        
        mainView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            contentView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            contentView.heightAnchor.constraint(equalToConstant: 150)
            ])
        contentView.addSubview(noteLabel)
        NSLayoutConstraint.activate([
            noteLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            noteLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            noteLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100)
            ])
        contentView.addSubview(noteSwitcher)
        NSLayoutConstraint.activate([
            noteSwitcher.topAnchor.constraint(equalTo: noteLabel.topAnchor, constant: 0),
            noteSwitcher.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
            ])
        contentView.addSubview(Line)
        NSLayoutConstraint.activate([
            Line.topAnchor.constraint(equalTo: noteLabel.bottomAnchor, constant: 30),
            Line.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            Line.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            Line.heightAnchor.constraint(equalToConstant: 1)
            
            ])
        contentView.addSubview(noteupdateLabel)
        NSLayoutConstraint.activate([
            noteupdateLabel.topAnchor.constraint(equalTo: Line.bottomAnchor, constant: 30),
            noteupdateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            noteupdateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -100)
            ])
        contentView.addSubview(updateSwitcher)
        NSLayoutConstraint.activate([
            updateSwitcher.topAnchor.constraint(equalTo: noteupdateLabel.topAnchor, constant: 0),
            updateSwitcher.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20)
            ])
        
    }

}
