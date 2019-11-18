//
//  AddRatingView.swift
//  Kayan
//
//  Created by Moe on 11/12/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import Cosmos

class AddRatingView: UIView {
    
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var ratingView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var rateLabel : UILabel = {
       let label = UILabel()
        label.text = "Rate product"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var rating : CosmosView = {
        let view = CosmosView()
        view.settings.fillMode = .full
        view.settings.starSize = 40
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var CommentView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var commentLabel : UILabel = {
       let label = UILabel()
        label.text = "Comment"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoBold(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var optionLabel : UILabel = {
        let label = UILabel()
        label.text = "(optional)"
        label.textColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        label.font = UIFont.CairoRegular(of: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var commentText : UITextView = {
       let text = UITextView()
        text.text = "write your comment"
        text.layer.borderWidth = 1
        text.layer.borderColor = #colorLiteral(red: 0.007843137255, green: 0.2941176471, blue: 0.4549019608, alpha: 1)
        text.layer.cornerRadius = 8
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var confirmBT : UIButton = {
        let butt = UIButton()
        butt.setTitle("confirm", for: .normal)
        butt.titleLabel?.font = UIFont.CairoBold(of: 15)
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
        mainView.addSubview(ratingView)
        NSLayoutConstraint.activate([
            ratingView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
            ratingView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            ratingView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            ratingView.heightAnchor.constraint(equalToConstant: 130)
            ])
        ratingView.addSubview(rateLabel)
        NSLayoutConstraint.activate([
            rateLabel.topAnchor.constraint(equalTo: ratingView.topAnchor, constant: 20),
            rateLabel.leadingAnchor.constraint(equalTo: ratingView.leadingAnchor, constant: 20),
            rateLabel.trailingAnchor.constraint(equalTo: ratingView.trailingAnchor, constant: -60)
            ])
        ratingView.addSubview(rating)
        NSLayoutConstraint.activate([
            rating.topAnchor.constraint(equalTo: rateLabel.bottomAnchor, constant: 10),
            rating.centerXAnchor.constraint(equalTo: ratingView.centerXAnchor, constant: 0),
            rating.leadingAnchor.constraint(equalTo: ratingView.leadingAnchor, constant: 50),
            rating.heightAnchor.constraint(equalToConstant: 50)
            ])
        mainView.addSubview(CommentView)
        NSLayoutConstraint.activate([
            CommentView.topAnchor.constraint(equalTo: ratingView.bottomAnchor, constant: 20),
            CommentView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            CommentView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            CommentView.heightAnchor.constraint(equalToConstant: 130)
            ])
        CommentView.addSubview(commentLabel)
        NSLayoutConstraint.activate([
            commentLabel.topAnchor.constraint(equalTo: CommentView.topAnchor, constant: 20),
            commentLabel.leadingAnchor.constraint(equalTo: CommentView.leadingAnchor, constant: 20),
//            commentLabel.widthAnchor.constraint(equalToConstant: 80)
            ])
        CommentView.addSubview(optionLabel)
        NSLayoutConstraint.activate([
            optionLabel.topAnchor.constraint(equalTo: commentLabel.topAnchor, constant: 0),
            optionLabel.leadingAnchor.constraint(equalTo: commentLabel.trailingAnchor, constant: 5),
            
            ])
        CommentView.addSubview(commentText)
        NSLayoutConstraint.activate([
            commentText.topAnchor.constraint(equalTo: commentLabel.bottomAnchor, constant: 5),
            commentText.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            commentText.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20),
            commentText.heightAnchor.constraint(equalToConstant: 70)
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
