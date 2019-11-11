//
//  EditOrderView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditOrderView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var ColorLabel : UILabel = {
       let label = UILabel()
        label.text = "color"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of:15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var Collorllection: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
//        coll.register(CollorEditCell.self, forCellWithReuseIdentifier: "CollorEditCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
//        coll.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        return coll
    }()
    
    var sizeLabel : UILabel = {
        let label = UILabel()
        label.text = "Size"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of:15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var Sizecllection: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(SizectionViewCell.self, forCellWithReuseIdentifier: "SizectionViewCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
        //        coll.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        return coll
    }()
    
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("Sing up", for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
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
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(ColorLabel)
        NSLayoutConstraint.activate([
            ColorLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 30),
            ColorLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            
            ])
        mainView.addSubview(Collorllection)
        NSLayoutConstraint.activate([
            Collorllection.topAnchor.constraint(equalTo: ColorLabel.bottomAnchor, constant: 0),
            Collorllection.leadingAnchor.constraint(equalTo: ColorLabel.leadingAnchor, constant: 0),
            Collorllection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            Collorllection.heightAnchor.constraint(equalToConstant: 40)
            
            ])
        mainView.addSubview(sizeLabel)
        NSLayoutConstraint.activate([
            sizeLabel.topAnchor.constraint(equalTo: Collorllection.bottomAnchor, constant: 10),
            sizeLabel.leadingAnchor.constraint(equalTo: ColorLabel.leadingAnchor, constant: 0)
            
            ])
        mainView.addSubview(Sizecllection)
        NSLayoutConstraint.activate([
            Sizecllection.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 5),
            Sizecllection.leadingAnchor.constraint(equalTo: sizeLabel.leadingAnchor, constant: 0),
            Sizecllection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            Sizecllection.heightAnchor.constraint(equalToConstant: 25)
            ])
        
        mainView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            confirmBT.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            confirmBT.heightAnchor.constraint(equalToConstant: 50)
            ])
        
    }

}
