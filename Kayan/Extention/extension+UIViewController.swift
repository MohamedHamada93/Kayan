//
//  Alert.swift
//  Champione Arena
//
//  Created by Youssef on 9/16/18.
//  Copyright © 2018 Youssef. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    func showAlert(title : String, messages : [String]?, message: String?, selfDismissing: Bool) {
        
        var messageContent = ""
        
        if let messages = messages {
        for message in messages {
            messageContent += message + "\n"
            }
        }
        
        if let message = message {
            messageContent = message
        }
        
        let alert = UIAlertController(title: title, message: messageContent, preferredStyle: .alert)
        
        
        if !selfDismissing {
            let title = NSLocalizedString("OK", comment: "Any")
            alert.addAction(UIAlertAction(title: title, style: .cancel, handler: nil))
        }
        
        present(alert, animated: true)
        
        if selfDismissing {
        let deadlineTime = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) { [weak self] in
           alert.dismiss(animated: true)
        } }
    }
    
    var isInteractionEnabled: Bool {
        get {
            return true
        }
        set {
            if !isInteractionEnabled {
                UIApplication.shared.beginIgnoringInteractionEvents()
            } else {
                UIApplication.shared.endIgnoringInteractionEvents()
            }
        }
    }
    
    func segua(controller : UIViewController,view:UIView,controllerView:UIView){
        //        let myView = Bundle.main.loadNibNamed(tittle, owner: nil, options: nil)![0] as! UIViewController
        addChild(controller)
        view.layer.borderColor = #colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)
        controllerView.translatesAutoresizingMaskIntoConstraints = true
        view.addSubview(controllerView)
        controller.didMove(toParent: self)
        controllerView.frame = CGRect(x:0, y: 0, width: view.frame.width, height:view.frame.height)
        
    }
    
    func interactionEnable(with indicator: UIActivityIndicatorView) {
        if indicator.isHidden {
            indicator.isHidden = false
            indicator.startAnimating()
            UIApplication.shared.beginIgnoringInteractionEvents()
        } else {
            indicator.isHidden = true
            indicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
        }
    }
    
    func getCurrentDeviceLanguage() -> String {
        if let langStr = Locale.current.languageCode {
            return langStr
        }
        return "en"
    }
    
 }
