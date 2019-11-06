//
//  FreeChargeView.swift
//  Kayan
//
//  Created by Moe on 10/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FreeChargeView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "5779-004-491EE13C")
        image.clipsToBounds = true
//        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var DescrioLabel : UILabel = {
       let label = UILabel()
        label.text = "استمتع بشحن مجاني للملكة العربية السعودية على كل طلباتك التي تتعدي قيمتها 200 ريال أو أكثر"
        label.numberOfLines = 0
        label.font = UIFont.CairoRegular(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        
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
            mainView.heightAnchor.constraint(equalToConstant: 75),
            mainView.widthAnchor.constraint(equalToConstant: 95)
            ])
        
        mainView.addSubview(DescrioLabel)
        NSLayoutConstraint.activate([
            DescrioLabel.topAnchor.constraint(equalTo: mainimage.bottomAnchor, constant: 20),
            DescrioLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            DescrioLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
            ])
        
    }

}
