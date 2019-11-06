//
//  ConfirmPassView.swift
//  Kayan
//
//  Created by Moe on 11/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class ConfirmPassView: UIView {

   
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var DescrioLabel : UILabel = {
        let label = UILabel()
        label.text = " SMS code has been sent to the phone numberA 4-digit. Please enter it"
        label.numberOfLines = 0
        label.font = UIFont.CairoBold(of: 15)
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    var codeview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9607843137, blue: 0.968627451, alpha: 1)
        view.layer.cornerRadius = 8
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var codeText : UITextField = {
        let text = UITextField()
        text.placeholder = "code"
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var codeImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "saudi flag")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var prograssCircel : MBCircularProgressBarView = {
        let prograss = MBCircularProgressBarView()
        prograss.value = 35
        prograss.backgroundColor = .clear
        //        prograss.progressColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.emptyLineColor = #colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1)
        prograss.progressLineWidth = 4
        prograss.emptyLineWidth = 4
        prograss.progressColor = #colorLiteral(red: 0.1333333333, green: 0.6392156863, blue: 1, alpha: 1)
        
        prograss.translatesAutoresizingMaskIntoConstraints = false
        return prograss
    }()
    
    var Resendbutt: UIButton = {
        let butt = UIButton()
        butt.setTitle("Resend the code", for: .normal)
        butt.setTitleColor(#colorLiteral(red: 0.8235294118, green: 0.8666666667, blue: 0.8901960784, alpha: 1), for: .normal)
        
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
        
        mainView.addSubview(DescrioLabel)
        NSLayoutConstraint.activate([
            DescrioLabel.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            DescrioLabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40),
            DescrioLabel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -40)
            ])
        
        mainView.addSubview(codeview)
        NSLayoutConstraint.activate([
            codeview.topAnchor.constraint(equalTo: DescrioLabel.bottomAnchor, constant: 30),
            codeview.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            codeview.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            codeview.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(codeImage)
        NSLayoutConstraint.activate([
            codeImage.topAnchor.constraint(equalTo: codeview.topAnchor, constant: 10),
            codeImage.leadingAnchor.constraint(equalTo: codeview.leadingAnchor, constant: 15),
            codeImage.widthAnchor.constraint(equalToConstant: 30),
            codeImage.bottomAnchor.constraint(equalTo: codeview.bottomAnchor, constant: -10)
            ])
        codeview.addSubview(codeText)
        NSLayoutConstraint.activate([
            codeText.topAnchor.constraint(equalTo: codeview.topAnchor, constant: 5),
            codeText.bottomAnchor.constraint(equalTo: codeview.bottomAnchor, constant: 5),
            codeText.leadingAnchor.constraint(equalTo: codeImage.trailingAnchor, constant: 15),
            codeText.trailingAnchor.constraint(equalTo: codeview.trailingAnchor, constant: -20)
            ])
        
        mainView.addSubview(prograssCircel)
        NSLayoutConstraint.activate([
            prograssCircel.topAnchor.constraint(equalTo: codeview.bottomAnchor, constant: 20),
            //            prograssCircel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 100),
            prograssCircel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: -50),
            prograssCircel.heightAnchor.constraint(equalToConstant: 50),
            prograssCircel.widthAnchor.constraint(equalToConstant: 50)
            ])
        
        mainView.addSubview(Resendbutt)
        NSLayoutConstraint.activate([
            Resendbutt.topAnchor.constraint(equalTo: prograssCircel.topAnchor, constant: 0),
            Resendbutt.leadingAnchor.constraint(equalTo: prograssCircel.trailingAnchor, constant: 0),
            Resendbutt.heightAnchor.constraint(equalToConstant: 45),
            Resendbutt.widthAnchor.constraint(equalToConstant: 170)
            ])
        
    }


}
