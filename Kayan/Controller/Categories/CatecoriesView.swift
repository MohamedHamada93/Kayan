//
//  CatecoriesView.swift
//  Kayan
//
//  Created by Moe on 11/10/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CatecoriesView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var AdView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var TitleLabel : UILabel = {
       let label = UILabel()
        label.text = "Supplier Categories"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var CategoryCollction: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(CategoryCell.self, forCellWithReuseIdentifier: "CategoryCell")
        coll.showsHorizontalScrollIndicator = false
        coll.translatesAutoresizingMaskIntoConstraints = false
        //        coll.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        
        return coll
    }()
    lazy var ProduCollction: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = UICollectionView.ScrollDirection.vertical
        let coll: UICollectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
        coll.backgroundColor = .clear
        coll.register(ProductCells.self, forCellWithReuseIdentifier: "ProductCells")
        coll.showsHorizontalScrollIndicator = false
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
        mainView.addSubview(AdView)
        NSLayoutConstraint.activate([
            AdView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            AdView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            AdView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            AdView.heightAnchor.constraint(equalToConstant: 130)
            ])
        mainView.addSubview(TitleLabel)
        NSLayoutConstraint.activate([
            TitleLabel.topAnchor.constraint(equalTo: AdView.bottomAnchor, constant: 20),
            TitleLabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            
            ])
        mainView.addSubview(CategoryCollction)
        NSLayoutConstraint.activate([
            CategoryCollction.topAnchor.constraint(equalTo: TitleLabel.bottomAnchor, constant: 0),
            CategoryCollction.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            CategoryCollction.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            CategoryCollction.heightAnchor.constraint(equalToConstant: 65)
            ])
        
        mainView.addSubview(ProduCollction)
        NSLayoutConstraint.activate([
            ProduCollction.topAnchor.constraint(equalTo: CategoryCollction.bottomAnchor, constant: 5),
            ProduCollction.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            ProduCollction.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            ProduCollction.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
     
        
    }

}
