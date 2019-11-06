//
//  ConfirmOrderView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class ConfirmOrderView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =   #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
//        scroll.contentSize.height = 800
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    // title
    var titleView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Address"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Title: UILabel = {
       let label = UILabel()
        label.text = "The side street from the main street"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var titleImage : UIImageView = {
       let img = UIImageView()
        img.image = UIImage(named: "next")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    // payment
    var payView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var payLabel: UILabel = {
        let label = UILabel()
        label.text = "Payment method"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Payment: UILabel = {
        let label = UILabel()
        label.text = "Upon receipt"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var payImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "next")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    // Discount
    var DiscountView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var DiscountLabel: UILabel = {
        let label = UILabel()
        label.text = "Payment method"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var discount: UILabel = {
        let label = UILabel()
        label.text = "Upon receipt"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 15)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var discountImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "next")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    var sperateView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var ProductLabe : UILabel = {
       let label = UILabel()
        label.text = "Product"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
       
        //        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.isScrollEnabled = false
        tableV.register(ProductCellTableViewCell.self, forCellReuseIdentifier: "ProductCellTableViewCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    
    var totalLabe : UILabel = {
        let label = UILabel()
        label.text = "Total"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ChargeLabel : UILabel = {
        let label = UILabel()
        label.text = "Discount coupon"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var pricesLabel : UILabel = {
        let label = UILabel()
        label.text = "239.00 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    //
    var DescountLabel : UILabel = {
        let label = UILabel()
        label.text = "Discount coupon"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var pricesDescount : UILabel = {
        let label = UILabel()
        label.text = "239.00 SR"
        label.textColor = #colorLiteral(red: 1, green: 0.2941176471, blue: 0.2941176471, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var AllView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8980392157, green: 0.9254901961, blue: 0.9450980392, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var allLabel : UILabel = {
       let label = UILabel()
        label.text = "Total"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .left
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pricestotal : UILabel = {
        let label = UILabel()
        label.text = "239.00 SR"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var bottonteView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        mainView.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        // title
        scrollView.addSubview(titleView)
        NSLayoutConstraint.activate([
            titleView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            titleView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            titleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            titleView.heightAnchor.constraint(equalToConstant: 80)
            ])
        titleView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleView.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: titleView.leadingAnchor, constant: 20),
            
            ])
        titleView.addSubview(Title)
        NSLayoutConstraint.activate([
            Title.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0),
            Title.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0),
            Title.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: -10)
            ])
        titleView.addSubview(titleImage)
        NSLayoutConstraint.activate([
            titleImage.centerYAnchor.constraint(equalTo: titleView.centerYAnchor, constant: 0),
            titleImage.trailingAnchor.constraint(equalTo: titleView.trailingAnchor, constant: -10),
            titleImage.heightAnchor.constraint(equalToConstant: 15),
            titleImage.widthAnchor.constraint(equalToConstant: 15)
            ])
        
        // Payment
        scrollView.addSubview(payView)
        NSLayoutConstraint.activate([
            payView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 0),
            payView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            payView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            payView.heightAnchor.constraint(equalToConstant: 80)
            ])
        payView.addSubview(payLabel)
        NSLayoutConstraint.activate([
            payLabel.topAnchor.constraint(equalTo: payView.topAnchor, constant: 10),
            payLabel.leadingAnchor.constraint(equalTo: payView.leadingAnchor, constant: 20),
            
            ])
        payView.addSubview(Payment)
        NSLayoutConstraint.activate([
            Payment.topAnchor.constraint(equalTo: payLabel.bottomAnchor, constant: 0),
            Payment.leadingAnchor.constraint(equalTo: payLabel.leadingAnchor, constant: 0),
            Payment.trailingAnchor.constraint(equalTo: payView.trailingAnchor, constant: -10)
            ])
        payView.addSubview(payImage)
        NSLayoutConstraint.activate([
            payImage.centerYAnchor.constraint(equalTo: payView.centerYAnchor, constant: 0),
            payImage.trailingAnchor.constraint(equalTo: payView.trailingAnchor, constant: -10),
            payImage.heightAnchor.constraint(equalToConstant: 15),
            payImage.widthAnchor.constraint(equalToConstant: 15)
            ])
        
        // discount
        scrollView.addSubview(DiscountView)
        NSLayoutConstraint.activate([
            DiscountView.topAnchor.constraint(equalTo: payView.bottomAnchor, constant: 0),
            DiscountView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            DiscountView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            DiscountView.heightAnchor.constraint(equalToConstant: 80)
            ])
        DiscountView.addSubview(DiscountLabel)
        NSLayoutConstraint.activate([
            DiscountLabel.topAnchor.constraint(equalTo: DiscountView.topAnchor, constant: 10),
            DiscountLabel.leadingAnchor.constraint(equalTo: DiscountView.leadingAnchor, constant: 20),
            
            ])
        DiscountView.addSubview(discount)
        NSLayoutConstraint.activate([
            discount.topAnchor.constraint(equalTo: DiscountLabel.bottomAnchor, constant: 0),
            discount.leadingAnchor.constraint(equalTo: DiscountLabel.leadingAnchor, constant: 0),
            discount.trailingAnchor.constraint(equalTo: DiscountView.trailingAnchor, constant: -10)
            ])
        DiscountView.addSubview(discountImage)
        NSLayoutConstraint.activate([
        discountImage.centerYAnchor.constraint(equalTo: DiscountView.centerYAnchor, constant: 0),
        discountImage.trailingAnchor.constraint(equalTo: DiscountView.trailingAnchor, constant: -10),
        discountImage.heightAnchor.constraint(equalToConstant: 15),
        discountImage.widthAnchor.constraint(equalToConstant: 15)
            ])
        scrollView.addSubview(sperateView)
        NSLayoutConstraint.activate([
            sperateView.topAnchor.constraint(equalTo: DiscountView.bottomAnchor, constant: 0),
            sperateView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            sperateView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            sperateView.heightAnchor.constraint(equalToConstant: 10)
            ])
        scrollView.addSubview(ProductLabe)
        NSLayoutConstraint.activate([
            ProductLabe.topAnchor.constraint(equalTo: sperateView.bottomAnchor, constant: 20),
            ProductLabe.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0),
            ProductLabe.heightAnchor.constraint(equalToConstant: 18)
            ])
        scrollView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: ProductLabe.bottomAnchor, constant: 5),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.heightAnchor.constraint(greaterThanOrEqualToConstant: 90)
            ])
        scrollView.addSubview(totalLabe)
        NSLayoutConstraint.activate([
            totalLabe.topAnchor.constraint(equalTo: mainTableView.bottomAnchor, constant: 5),
            totalLabe.leadingAnchor.constraint(equalTo: ProductLabe.leadingAnchor, constant: 0),
            totalLabe.heightAnchor.constraint(equalToConstant: 18),
           
            ])
        scrollView.addSubview(ChargeLabel)
        NSLayoutConstraint.activate([
            ChargeLabel.topAnchor.constraint(equalTo: totalLabe.bottomAnchor, constant: 5),
            ChargeLabel.leadingAnchor.constraint(equalTo: totalLabe.leadingAnchor, constant: 0),
            ChargeLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        scrollView.addSubview(pricesLabel)
        NSLayoutConstraint.activate([
            pricesLabel.topAnchor.constraint(equalTo: ChargeLabel.topAnchor, constant: 0),
            pricesLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10),
            pricesLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        // descount
        scrollView.addSubview(DescountLabel)
        NSLayoutConstraint.activate([
            DescountLabel.topAnchor.constraint(equalTo: pricesLabel.bottomAnchor, constant: 5),
            DescountLabel.leadingAnchor.constraint(equalTo: totalLabe.leadingAnchor, constant: 0),
            DescountLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        scrollView.addSubview(pricesDescount)
        NSLayoutConstraint.activate([
            pricesDescount.topAnchor.constraint(equalTo: DescountLabel.topAnchor, constant: 0),
            pricesDescount.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10),
            pricesDescount.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        scrollView.addSubview(AllView)
        NSLayoutConstraint.activate([
            AllView.topAnchor.constraint(equalTo: pricesDescount.bottomAnchor, constant: 5),
            AllView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            AllView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            AllView.heightAnchor.constraint(equalToConstant: 40)
            ])
        scrollView.addSubview(allLabel)
        NSLayoutConstraint.activate([
            allLabel.centerYAnchor.constraint(equalTo: AllView.centerYAnchor, constant: 0),
            allLabel.leadingAnchor.constraint(equalTo: DescountLabel.leadingAnchor, constant: 0)
            ])
        
        scrollView.addSubview(pricestotal)
        NSLayoutConstraint.activate([
            pricestotal.topAnchor.constraint(equalTo: allLabel.topAnchor, constant: 0),
            pricestotal.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10),
            pricestotal.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        scrollView.addSubview(bottonteView)
        NSLayoutConstraint.activate([
            bottonteView.topAnchor.constraint(equalTo: AllView.bottomAnchor, constant: 0),
            bottonteView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            bottonteView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            bottonteView.heightAnchor.constraint(equalToConstant: 100),
            bottonteView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0)
            ])
        
        scrollView.addSubview(confirmBT)
        NSLayoutConstraint.activate([
            confirmBT.bottomAnchor.constraint(equalTo: bottonteView.bottomAnchor, constant: -20),
            confirmBT.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            confirmBT.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            confirmBT.heightAnchor.constraint(equalToConstant: 45),
//            confirmBT.topAnchor.constraint(equalTo: totalLabe.bottomAnchor, constant: 10)
            ])
//
        
    }

}
