//
//  FavoriteView.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FavoriteView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var Collorllection: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.vertical
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(FavoriteCell.self, forCellWithReuseIdentifier: "FavoriteCell")
        coll.translatesAutoresizingMaskIntoConstraints = false
        //        coll.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        return coll
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
        mainView.addSubview(Collorllection)
        NSLayoutConstraint.activate([
            Collorllection.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            Collorllection.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            Collorllection.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            Collorllection.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
    }

}
