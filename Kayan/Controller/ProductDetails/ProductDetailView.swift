//
//  ProductDetailView.swift
//  Kayan
//
//  Created by Moe on 11/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ProductDetailView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
                scroll.contentSize.height = 800
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    var mainImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "image base")
        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var menubutton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "menu"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var bascketButton : UIButton = {
       let butt = UIButton()
        butt.setImage(UIImage(named: "basket"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var backButton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "back"), for: .normal)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var addView : UIView = {
      let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CurrencLabel : UILabel = {
       let label = UILabel()
        label.text = "SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 23)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var priceLabel : UILabel = {
       let label = UILabel()
        label.text = "99,99"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 23)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var Kaynbest : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "note")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var CurrencDiscount : UILabel = {
        let label = UILabel()
        label.text = "SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pricediscount : UILabel = {
        let label = UILabel()
        label.text = "99,99"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var discountView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.2941176471, blue: 0.2941176471, alpha: 1)
        view.layer.cornerRadius = 5
        
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
        mainView.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        scrollView.addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            mainImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainImage.heightAnchor.constraint(equalToConstant: 300),
            ])
        scrollView.addSubview(menubutton)
        NSLayoutConstraint.activate([
            menubutton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30),
            menubutton.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -30),
            menubutton.heightAnchor.constraint(equalToConstant: 8),
            menubutton.widthAnchor.constraint(equalToConstant: 25)
            ])
        scrollView.addSubview(bascketButton)
        NSLayoutConstraint.activate([
            bascketButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 25),
            bascketButton.trailingAnchor.constraint(equalTo: menubutton.leadingAnchor, constant: -10),
            bascketButton.heightAnchor.constraint(equalToConstant: 20),
            bascketButton.widthAnchor.constraint(equalToConstant: 25)
            ])
        scrollView.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: bascketButton.topAnchor, constant: 0),
            backButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 9)
            ])
        scrollView.addSubview(addView)
        NSLayoutConstraint.activate([
            addView.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 0),
            addView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            addView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            addView.heightAnchor.constraint(equalToConstant: 300)
            ])
        addView.addSubview(CurrencLabel)
        NSLayoutConstraint.activate([
            CurrencLabel.topAnchor.constraint(equalTo: addView.topAnchor, constant: 10),
            CurrencLabel.leadingAnchor.constraint(equalTo: addView.leadingAnchor, constant: 20)
            ])
        addView.addSubview(priceLabel)
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: CurrencLabel.topAnchor, constant: 0),
            priceLabel.leadingAnchor.constraint(equalTo: CurrencLabel.trailingAnchor, constant: 5)
            ])
        addView.addSubview(Kaynbest)
        NSLayoutConstraint.activate([
//            Kaynbest.topAnchor.constraint(equalTo: CurrencLabel.topAnchor, constant: -4),
            Kaynbest.centerYAnchor.constraint(equalTo: CurrencLabel.centerYAnchor, constant: 0),
            Kaynbest.leadingAnchor.constraint(equalTo: priceLabel.trailingAnchor, constant: 10),
            Kaynbest.heightAnchor.constraint(equalToConstant: 15),
            Kaynbest.widthAnchor.constraint(equalToConstant: 50)
            ])
        addView.addSubview(CurrencDiscount)
        NSLayoutConstraint.activate([
            CurrencDiscount.topAnchor.constraint(equalTo: CurrencLabel.bottomAnchor, constant: 0),
            CurrencDiscount.leadingAnchor.constraint(equalTo: CurrencLabel.leadingAnchor, constant: 0)
            ])
        addView.addSubview(pricediscount)
        NSLayoutConstraint.activate([
            pricediscount.topAnchor.constraint(equalTo: CurrencDiscount.topAnchor, constant: 0),
            pricediscount.leadingAnchor.constraint(equalTo: CurrencDiscount.trailingAnchor, constant: 5)
            ])
        addView.addSubview(discountView)
        NSLayoutConstraint.activate([
//            discountView.topAnchor.constraint(equalTo: pricediscount.topAnchor, constant: 0),
            discountView.centerYAnchor.constraint(equalTo: pricediscount.centerYAnchor, constant: 0),
            discountView.leadingAnchor.constraint(equalTo: pricediscount.trailingAnchor, constant: 10),
            discountView.heightAnchor.constraint(equalToConstant: 20),
            discountView.widthAnchor.constraint(equalToConstant: 50)
            ])
    }

}
