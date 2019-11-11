//
//  MoreView.swift
//  Kayan
//
//  Created by Moe on 11/8/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class MoreView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
                scroll.contentSize.height = 650
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    var ProfileImage : UIImageView = {
       let img = UIImageView()
        img.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        img.layer.cornerRadius = 50
        img.clipsToBounds = true
        img.layer.masksToBounds = true
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    var name : UILabel = {
       let label = UILabel()
        label.text = "ahmed mohamed adel"
        label.font = UIFont.CairoBold(of: 19)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Phone : UILabel = {
        let label = UILabel()
        label.text = "9283734455"
        label.font = UIFont.CairoBold(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // favorite
    var favoriteView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var favoriteImage : UIImageView = {
       let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var favoriteLabel : UILabel = {
       let label = UILabel()
        label.text = "favorite"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var favoritenext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var favoritLine : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //Order
    var myorderView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var MyorderImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var MyorderLabel : UILabel = {
        let label = UILabel()
        label.text = "My Order"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Myordernext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var MyorderLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Adreess
    var AdreesView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var AdreesImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var addressLabel : UILabel = {
        let label = UILabel()
        label.text = "Addrees"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Addreesnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var AdreessLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // payment
    var paymentView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var paymentImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var paymentLabel : UILabel = {
        let label = UILabel()
        label.text = "payment"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var paymentnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var paymentLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Setting
    var settingView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var settingImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var settingLabel : UILabel = {
        let label = UILabel()
        label.text = "setting"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var settingnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var settingLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Setting
    var pointView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pointImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var pointLabel : UILabel = {
        let label = UILabel()
        label.text = "My point"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var pointnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var pointLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // support
    var supportView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var supportImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var supportLabel : UILabel = {
        let label = UILabel()
        label.text = "techical support"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var supportnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var supportLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // City Setting
    var LangueView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var LanguageImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var languageLabel : UILabel = {
        let label = UILabel()
        label.text = "Country and language settings"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var languanext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var languaLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // rate
    var rateView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var rateImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var rateLabel : UILabel = {
        let label = UILabel()
        label.text = "rate app"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var ratenext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var rateLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // about
    var aboutView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var aboutImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var aboutLabel : UILabel = {
        let label = UILabel()
        label.text = "about Kayn"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var aboutnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var aboutLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // Logout
    var LogoutView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var logoutImage : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "favourite")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var logoutLabel : UILabel = {
        let label = UILabel()
        label.text = "logout"
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var logoutnext : UIImageView = {
        let imag = UIImageView()
        imag.image = UIImage(named: "next")
        
        imag.translatesAutoresizingMaskIntoConstraints = false
        return imag
    }()
    var logoutLine : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
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
        scrollView.addSubview(ProfileImage)
        NSLayoutConstraint.activate([
            ProfileImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 20),
            ProfileImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            ProfileImage.heightAnchor.constraint(equalToConstant: 100),
            ProfileImage.widthAnchor.constraint(equalToConstant: 100)
            ])
        
        scrollView.addSubview(name)
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30),
            name.leadingAnchor.constraint(equalTo: ProfileImage.trailingAnchor, constant: 20),
            name.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10)
            ])
        scrollView.addSubview(Phone)
        NSLayoutConstraint.activate([
            Phone.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 0),
            Phone.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            Phone.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -10)
            ])
        
        // favorite
        scrollView.addSubview(favoriteView)
        NSLayoutConstraint.activate([
            favoriteView.topAnchor.constraint(equalTo: ProfileImage.bottomAnchor, constant: 20),
            favoriteView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            favoriteView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            favoriteView.heightAnchor.constraint(equalToConstant: 40)
            ])
        favoriteView.addSubview(favoriteImage)
        NSLayoutConstraint.activate([
            favoriteImage.centerYAnchor.constraint(equalTo: favoriteView.centerYAnchor, constant: 0),
            favoriteImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            favoriteImage.heightAnchor.constraint(equalToConstant: 20),
            favoriteImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        favoriteView.addSubview(favoriteLabel)
        NSLayoutConstraint.activate([
            favoriteLabel.topAnchor.constraint(equalTo: favoriteImage.topAnchor, constant: 0),
            favoriteLabel.leadingAnchor.constraint(equalTo: favoriteImage.trailingAnchor, constant: 15)
            ])
        favoriteView.addSubview(favoritenext)
        NSLayoutConstraint.activate([
            favoritenext.topAnchor.constraint(equalTo: favoriteImage.topAnchor, constant: 0),
            favoritenext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            favoritenext.heightAnchor.constraint(equalToConstant: 10),
            favoritenext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        favoriteView.addSubview(favoritLine)
        NSLayoutConstraint.activate([
            favoritLine.topAnchor.constraint(equalTo: favoriteView.bottomAnchor, constant: -1),
            favoritLine.heightAnchor.constraint(equalToConstant: 1),
            favoritLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            favoritLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        
        // My order
        scrollView.addSubview(myorderView)
        NSLayoutConstraint.activate([
            myorderView.topAnchor.constraint(equalTo: favoriteView.bottomAnchor, constant: 0),
            myorderView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            myorderView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            myorderView.heightAnchor.constraint(equalToConstant: 40)
            ])
        myorderView.addSubview(MyorderImage)
        NSLayoutConstraint.activate([
            MyorderImage.centerYAnchor.constraint(equalTo: myorderView.centerYAnchor, constant: 0),
            MyorderImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            MyorderImage.heightAnchor.constraint(equalToConstant: 20),
            MyorderImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        myorderView.addSubview(MyorderLabel)
        NSLayoutConstraint.activate([
            MyorderLabel.topAnchor.constraint(equalTo: MyorderImage.topAnchor, constant: 0),
            MyorderLabel.leadingAnchor.constraint(equalTo: MyorderImage.trailingAnchor, constant: 15)
            ])
        myorderView.addSubview(Myordernext)
        NSLayoutConstraint.activate([
            Myordernext.topAnchor.constraint(equalTo: MyorderImage.topAnchor, constant: 0),
            Myordernext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            Myordernext.heightAnchor.constraint(equalToConstant: 10),
            Myordernext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        myorderView.addSubview(MyorderLine)
        NSLayoutConstraint.activate([
            MyorderLine.topAnchor.constraint(equalTo: myorderView.bottomAnchor, constant: -1),
            MyorderLine.heightAnchor.constraint(equalToConstant: 1),
            MyorderLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            MyorderLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        
        // My Address
        scrollView.addSubview(AdreesView)
        NSLayoutConstraint.activate([
            AdreesView.topAnchor.constraint(equalTo: myorderView.bottomAnchor, constant: 0),
            AdreesView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            AdreesView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            AdreesView.heightAnchor.constraint(equalToConstant: 40)
            ])
        AdreesView.addSubview(AdreesImage)
        NSLayoutConstraint.activate([
            AdreesImage.centerYAnchor.constraint(equalTo: AdreesView.centerYAnchor, constant: 0),
            AdreesImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            AdreesImage.heightAnchor.constraint(equalToConstant: 20),
            AdreesImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        AdreesView.addSubview(addressLabel)
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: AdreesImage.topAnchor, constant: 0),
            addressLabel.leadingAnchor.constraint(equalTo: MyorderImage.trailingAnchor, constant: 15)
            ])
        AdreesView.addSubview(Addreesnext)
        NSLayoutConstraint.activate([
            Addreesnext.topAnchor.constraint(equalTo: AdreesImage.topAnchor, constant: 0),
            Addreesnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            Addreesnext.heightAnchor.constraint(equalToConstant: 10),
            Addreesnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        AdreesView.addSubview(AdreessLine)
        NSLayoutConstraint.activate([
            AdreessLine.topAnchor.constraint(equalTo: AdreesView.bottomAnchor, constant: -1),
            AdreessLine.heightAnchor.constraint(equalToConstant: 1),
            AdreessLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            AdreessLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My payment
        scrollView.addSubview(paymentView)
        NSLayoutConstraint.activate([
            paymentView.topAnchor.constraint(equalTo: AdreesView.bottomAnchor, constant: 0),
            paymentView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            paymentView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            paymentView.heightAnchor.constraint(equalToConstant: 40)
            ])
        paymentView.addSubview(paymentImage)
        NSLayoutConstraint.activate([
            paymentImage.centerYAnchor.constraint(equalTo: paymentView.centerYAnchor, constant: 0),
            paymentImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            paymentImage.heightAnchor.constraint(equalToConstant: 20),
            paymentImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        paymentView.addSubview(paymentLabel)
        NSLayoutConstraint.activate([
            paymentLabel.topAnchor.constraint(equalTo: paymentImage.topAnchor, constant: 0),
            paymentLabel.leadingAnchor.constraint(equalTo: paymentImage.trailingAnchor, constant: 15)
            ])
        paymentView.addSubview(paymentnext)
        NSLayoutConstraint.activate([
            paymentnext.topAnchor.constraint(equalTo: paymentImage.topAnchor, constant: 0),
            paymentnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            paymentnext.heightAnchor.constraint(equalToConstant: 10),
            paymentnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        paymentView.addSubview(paymentLine)
        NSLayoutConstraint.activate([
            paymentLine.topAnchor.constraint(equalTo: paymentView.bottomAnchor, constant: -1),
            paymentLine.heightAnchor.constraint(equalToConstant: 1),
            paymentLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            paymentLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My setting
        scrollView.addSubview(settingView)
        NSLayoutConstraint.activate([
            settingView.topAnchor.constraint(equalTo: paymentView.bottomAnchor, constant: 0),
            settingView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            settingView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            settingView.heightAnchor.constraint(equalToConstant: 40)
            ])
        settingView.addSubview(settingImage)
        NSLayoutConstraint.activate([
            settingImage.centerYAnchor.constraint(equalTo: settingView.centerYAnchor, constant: 0),
            settingImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            settingImage.heightAnchor.constraint(equalToConstant: 20),
            settingImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        settingView.addSubview(settingLabel)
        NSLayoutConstraint.activate([
            settingLabel.topAnchor.constraint(equalTo: settingImage.topAnchor, constant: 0),
            settingLabel.leadingAnchor.constraint(equalTo: settingImage.trailingAnchor, constant: 15)
            ])
        settingView.addSubview(settingnext)
        NSLayoutConstraint.activate([
            settingnext.topAnchor.constraint(equalTo: settingImage.topAnchor, constant: 0),
            settingnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            settingnext.heightAnchor.constraint(equalToConstant: 10),
            settingnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        settingView.addSubview(settingLine)
        NSLayoutConstraint.activate([
            settingLine.topAnchor.constraint(equalTo: settingView.bottomAnchor, constant: -1),
            settingLine.heightAnchor.constraint(equalToConstant: 1),
            settingLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            settingLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My Point
        scrollView.addSubview(pointView)
        NSLayoutConstraint.activate([
            pointView.topAnchor.constraint(equalTo: settingView.bottomAnchor, constant: 0),
            pointView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            pointView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            pointView.heightAnchor.constraint(equalToConstant: 40)
            ])
        pointView.addSubview(pointImage)
        NSLayoutConstraint.activate([
            pointImage.centerYAnchor.constraint(equalTo: pointView.centerYAnchor, constant: 0),
            pointImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            pointImage.heightAnchor.constraint(equalToConstant: 20),
            pointImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        pointView.addSubview(pointLabel)
        NSLayoutConstraint.activate([
            pointLabel.topAnchor.constraint(equalTo: pointImage.topAnchor, constant: 0),
            pointLabel.leadingAnchor.constraint(equalTo: pointImage.trailingAnchor, constant: 15)
            ])
        pointView.addSubview(pointnext)
        NSLayoutConstraint.activate([
            pointnext.topAnchor.constraint(equalTo: pointImage.topAnchor, constant: 0),
            pointnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            pointnext.heightAnchor.constraint(equalToConstant: 10),
            pointnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        pointView.addSubview(pointLine)
        NSLayoutConstraint.activate([
            pointLine.topAnchor.constraint(equalTo: pointView.bottomAnchor, constant: -1),
            pointLine.heightAnchor.constraint(equalToConstant: 1),
            pointLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            pointLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My support
        scrollView.addSubview(supportView)
        NSLayoutConstraint.activate([
            supportView.topAnchor.constraint(equalTo: pointView.bottomAnchor, constant: 20),
            supportView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            supportView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            supportView.heightAnchor.constraint(equalToConstant: 40)
            ])
        supportView.addSubview(supportImage)
        NSLayoutConstraint.activate([
            supportImage.centerYAnchor.constraint(equalTo: supportView.centerYAnchor, constant: 0),
            supportImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            supportImage.heightAnchor.constraint(equalToConstant: 20),
            supportImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        supportView.addSubview(supportLabel)
        NSLayoutConstraint.activate([
            supportLabel.topAnchor.constraint(equalTo: supportImage.topAnchor, constant: 0),
            supportLabel.leadingAnchor.constraint(equalTo: supportImage.trailingAnchor, constant: 15)
            ])
        supportView.addSubview(supportnext)
        NSLayoutConstraint.activate([
            supportnext.topAnchor.constraint(equalTo: supportImage.topAnchor, constant: 0),
            supportnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            supportnext.heightAnchor.constraint(equalToConstant: 10),
            supportnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        supportView.addSubview(supportLine)
        NSLayoutConstraint.activate([
            supportLine.topAnchor.constraint(equalTo: supportView.bottomAnchor, constant: -1),
            supportLine.heightAnchor.constraint(equalToConstant: 1),
            supportLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            supportLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My Langua
        scrollView.addSubview(LangueView)
        NSLayoutConstraint.activate([
            LangueView.topAnchor.constraint(equalTo: supportView.bottomAnchor, constant: 0),
            LangueView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            LangueView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            LangueView.heightAnchor.constraint(equalToConstant: 40)
            ])
        LangueView.addSubview(LanguageImage)
        NSLayoutConstraint.activate([
            LanguageImage.centerYAnchor.constraint(equalTo: LangueView.centerYAnchor, constant: 0),
            LanguageImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            LanguageImage.heightAnchor.constraint(equalToConstant: 20),
            LanguageImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        LangueView.addSubview(languageLabel)
        NSLayoutConstraint.activate([
            languageLabel.topAnchor.constraint(equalTo: LanguageImage.topAnchor, constant: 0),
            languageLabel.leadingAnchor.constraint(equalTo: supportImage.trailingAnchor, constant: 15)
            ])
        LangueView.addSubview(languanext)
        NSLayoutConstraint.activate([
            languanext.topAnchor.constraint(equalTo: LanguageImage.topAnchor, constant: 0),
            languanext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            languanext.heightAnchor.constraint(equalToConstant: 10),
            languanext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        LangueView.addSubview(languaLine)
        NSLayoutConstraint.activate([
            languaLine.topAnchor.constraint(equalTo: LangueView.bottomAnchor, constant: -1),
            languaLine.heightAnchor.constraint(equalToConstant: 1),
            languaLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            languaLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My rate
        scrollView.addSubview(rateView)
        NSLayoutConstraint.activate([
            rateView.topAnchor.constraint(equalTo: LangueView.bottomAnchor, constant: 0),
            rateView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            rateView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            rateView.heightAnchor.constraint(equalToConstant: 40)
            ])
        rateView.addSubview(rateImage)
        NSLayoutConstraint.activate([
            rateImage.centerYAnchor.constraint(equalTo: rateView.centerYAnchor, constant: 0),
            rateImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            rateImage.heightAnchor.constraint(equalToConstant: 20),
            rateImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        rateView.addSubview(rateLabel)
        NSLayoutConstraint.activate([
            rateLabel.topAnchor.constraint(equalTo: rateImage.topAnchor, constant: 0),
            rateLabel.leadingAnchor.constraint(equalTo: supportImage.trailingAnchor, constant: 15)
            ])
        rateView.addSubview(ratenext)
        NSLayoutConstraint.activate([
            ratenext.topAnchor.constraint(equalTo: rateImage.topAnchor, constant: 0),
            ratenext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            ratenext.heightAnchor.constraint(equalToConstant: 10),
            ratenext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        rateView.addSubview(rateLine)
        NSLayoutConstraint.activate([
            rateLine.topAnchor.constraint(equalTo: rateView.bottomAnchor, constant: -1),
            rateLine.heightAnchor.constraint(equalToConstant: 1),
            rateLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            rateLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My about
        scrollView.addSubview(aboutView)
        NSLayoutConstraint.activate([
            aboutView.topAnchor.constraint(equalTo: rateView.bottomAnchor, constant: 0),
            aboutView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            aboutView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            aboutView.heightAnchor.constraint(equalToConstant: 40)
            ])
        aboutView.addSubview(aboutImage)
        NSLayoutConstraint.activate([
            aboutImage.centerYAnchor.constraint(equalTo: aboutView.centerYAnchor, constant: 0),
            aboutImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            aboutImage.heightAnchor.constraint(equalToConstant: 20),
            aboutImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        aboutView.addSubview(aboutLabel)
        NSLayoutConstraint.activate([
            aboutLabel.topAnchor.constraint(equalTo: aboutImage.topAnchor, constant: 0),
            aboutLabel.leadingAnchor.constraint(equalTo: aboutImage.trailingAnchor, constant: 15)
            ])
        aboutView.addSubview(aboutnext)
        NSLayoutConstraint.activate([
            aboutnext.topAnchor.constraint(equalTo: rateImage.topAnchor, constant: 0),
            aboutnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            aboutnext.heightAnchor.constraint(equalToConstant: 10),
            aboutnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        aboutView.addSubview(aboutLine)
        NSLayoutConstraint.activate([
            aboutLine.topAnchor.constraint(equalTo: aboutView.bottomAnchor, constant: -1),
            aboutLine.heightAnchor.constraint(equalToConstant: 1),
            aboutLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            aboutLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        // My Logout
        scrollView.addSubview(LogoutView)
        NSLayoutConstraint.activate([
            LogoutView.topAnchor.constraint(equalTo: aboutView.bottomAnchor, constant: 0),
            LogoutView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            LogoutView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            LogoutView.heightAnchor.constraint(equalToConstant: 40)
            ])
        LogoutView.addSubview(logoutImage)
        NSLayoutConstraint.activate([
            logoutImage.centerYAnchor.constraint(equalTo: LogoutView.centerYAnchor, constant: 0),
            logoutImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            logoutImage.heightAnchor.constraint(equalToConstant: 20),
            logoutImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        LogoutView.addSubview(logoutLabel)
        NSLayoutConstraint.activate([
            logoutLabel.topAnchor.constraint(equalTo: logoutImage.topAnchor, constant: 0),
            logoutLabel.leadingAnchor.constraint(equalTo: logoutImage.trailingAnchor, constant: 15)
            ])
        LogoutView.addSubview(logoutnext)
        NSLayoutConstraint.activate([
            logoutnext.topAnchor.constraint(equalTo: logoutImage.topAnchor, constant: 0),
            logoutnext.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            logoutnext.heightAnchor.constraint(equalToConstant: 10),
            logoutnext.widthAnchor.constraint(equalToConstant: 10)
            
            ])
        LogoutView.addSubview(logoutLine)
        NSLayoutConstraint.activate([
            logoutLine.topAnchor.constraint(equalTo: LogoutView.bottomAnchor, constant: -1),
            logoutLine.heightAnchor.constraint(equalToConstant: 1),
            logoutLine.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            logoutLine.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])

    }

}
