//
//  AuthView.swift
//  Kayan
//
//  Created by Moe on 10/31/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AuthView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var singButton: UIButton = {
       let butt = UIButton()
        butt.setTitle("sing in", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 15)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var RegisterButton: UIButton = {
        let butt = UIButton()
        butt.setTitle("Register", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 15)
        butt.setTitleColor(#colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var rigistertaped : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
//        Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    var singtapes : UIView = {
        let Press = UIView()
        Press.backgroundColor = .clear
//          Press.layer.applySketchShadow()
        
        Press.translatesAutoresizingMaskIntoConstraints = false
        return Press
    }()
    
    var viewStack : UIView = {
       let view = UIView()
//        view.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        view.layer.applySketchShadow()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [RegisterButton, singButton])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
//        stackView.layer.applySketchShadow()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
//    lazy var stackViewView: UIStackView = {
//        let stackView = UIStackView(arrangedSubviews: [rigisterView, singView])
//        stackView.alignment = .center
//        stackView.distribution = .fillEqually
//        stackView.axis = .horizontal
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        return stackView
//    }()
    
    var contantview : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        mainView.addSubview(RegisterButton)
        NSLayoutConstraint.activate([
            RegisterButton.heightAnchor.constraint(equalToConstant: 50),
            ])
        mainView.addSubview(singButton)
        NSLayoutConstraint.activate([
            singButton.heightAnchor.constraint(equalToConstant: 50),
            ])
        
        mainView.addSubview(viewStack)
        NSLayoutConstraint.activate([
            viewStack.topAnchor.constraint(equalTo: mainView.topAnchor, constant: -3),
            viewStack.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            viewStack.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            viewStack.heightAnchor.constraint(equalToConstant: 53)
            ])
        
        viewStack.addSubview(stackViewAcount)
        NSLayoutConstraint.activate([
            stackViewAcount.topAnchor.constraint(equalTo: viewStack.topAnchor, constant: 0),
            stackViewAcount.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            stackViewAcount.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            stackViewAcount.heightAnchor.constraint(equalToConstant: 53)
            ])
        mainView.addSubview(rigistertaped)
        NSLayoutConstraint.activate([
            rigistertaped.topAnchor.constraint(equalTo: RegisterButton.bottomAnchor, constant: 0),
            rigistertaped.leadingAnchor.constraint(equalTo: RegisterButton.leadingAnchor, constant: 0),
            rigistertaped.trailingAnchor.constraint(equalTo: RegisterButton.trailingAnchor, constant: 0),
            rigistertaped.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(singtapes)
        NSLayoutConstraint.activate([
            singtapes.topAnchor.constraint(equalTo: singButton.bottomAnchor, constant: 0),
            singtapes.leadingAnchor.constraint(equalTo: singButton.leadingAnchor, constant: 0),
            singtapes.trailingAnchor.constraint(equalTo: singButton.trailingAnchor, constant: 0),
            singtapes.heightAnchor.constraint(equalToConstant: 2)
            ])
        mainView.addSubview(contantview)
        NSLayoutConstraint.activate([
            contantview.topAnchor.constraint(equalTo: stackViewAcount.bottomAnchor, constant: 0),
            contantview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            contantview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            contantview.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
//        mainView.addSubview(stackViewView)
//        NSLayoutConstraint.activate([
//            stackViewView.topAnchor.constraint(equalTo: stackViewAcount.bottomAnchor, constant: 10),
//            stackViewView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
//            stackViewView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
//            stackViewView.heightAnchor.constraint(equalToConstant: 20)
//            ])
        
        
    }

}
