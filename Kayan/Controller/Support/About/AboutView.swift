//
//  AboutView.swift
//  Kayan
//
//  Created by Moe on 11/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AboutView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
//        scroll.contentSize.height = 650
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    var aboutImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "logo dark")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var AboutLabel : UILabel = {
       let label = UILabel()
        label.text = "يرتبط المتجر بعلاقات قوية مع أبرز المطلعين في ميدان الموضة وآخر الصيحات ممن لهم النفوذ الأضخم على التيار العام وتتعاون معهم بحيث توفر لهم أجدد صيحات الموضة للمهتمين بها. وقد وقع متجر كيان القارات اتفاقيات تساهم مع عدد من أفضل مؤسسات بيع المنتجات بالخارج، وشركات خدمات التخزين، والشركات المقدمة لخدمات ما عقب البيع في جميع مناطق العالم. إضافة إلى ذلك، فإننا نملك مجموعة عمل متميز بإمكانيات متميزة وتفاني مطلق ومرونة وخبرات لا مثيل لها بواسطة عمله اليومي. كما يوفر متجر كيان القارات خدمة زبائن بلغات متنوعة بالإضافة الى الكثير من أنظمة الانترنت وأساليب التسويق الإلكتروني التي تتناسب مع احتياج زبائننا. نفخر في متجر كيان القارات بأن عدد زبائننا المسجلين بلغ إلى 100 الف عميل في اخر تحديث للاحصائيات. كما نطمح إلى مبالغة ذلك الرقم بواسطة فتح آفاق تسويقية حديثة في أماكن البيع والشراء الخارجية. يمكنه زبائننا النفع من جميع الخدمات التي نقدمها بواسطة وضع دعوة شراء على موقعنا."
        label.font = UIFont.CairoRegular(of: 14)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var faceBook : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.clipsToBounds = true
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "facebook (1)"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var snabshat : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "snapchat"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var twitter : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "twitter"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var instgram : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "instagram (1)"), for: .normal)
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [twitter, faceBook, instgram,snabshat])
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        scrollView.addSubview(aboutImage)
        NSLayoutConstraint.activate([
            aboutImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 50),
            aboutImage.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            aboutImage.heightAnchor.constraint(equalToConstant: 50),
            aboutImage.widthAnchor.constraint(equalToConstant: 150)
            ])
        scrollView.addSubview(AboutLabel)
        NSLayoutConstraint.activate([
            AboutLabel.topAnchor.constraint(equalTo: aboutImage.bottomAnchor, constant: 30),
            AboutLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            AboutLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            
            ])
        scrollView.addSubview(snabshat)
        NSLayoutConstraint.activate([
            snabshat.heightAnchor.constraint(equalToConstant: 25),
            snabshat.widthAnchor.constraint(equalToConstant: 25),
            ])
        scrollView.addSubview(faceBook)
        NSLayoutConstraint.activate([
            faceBook.heightAnchor.constraint(equalToConstant: 25),
            faceBook.widthAnchor.constraint(equalToConstant: 25)
            ])
        scrollView.addSubview(instgram)
        NSLayoutConstraint.activate([
            instgram.heightAnchor.constraint(equalToConstant: 25),
            instgram.widthAnchor.constraint(equalToConstant: 25)
            ])
        scrollView.addSubview(twitter)
        NSLayoutConstraint.activate([
            twitter.heightAnchor.constraint(equalToConstant: 25),
            twitter.widthAnchor.constraint(equalToConstant: 25)
            ])
        scrollView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            stackView.heightAnchor.constraint(equalToConstant: 40),
            stackView.topAnchor.constraint(equalTo: AboutLabel.bottomAnchor, constant: 25),
            stackView.widthAnchor.constraint(equalToConstant: 170),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -50)
            
            ])
        
    }
    
}
