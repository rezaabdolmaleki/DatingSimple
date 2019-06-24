//
//  ViewController+UI.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension ViewController {
    
    func setupHeader(){
        let title = "Create a new account"
        let subTitle = "\n\nLorem ipsum dolor sit amet, consectetur adipisic elit sed do."
        
        let attributeTitle = NSMutableAttributedString.init(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        
        let attributeSubtitle = NSMutableAttributedString.init(string: subTitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor.init(white: 0, alpha: 0.45)])
        
        attributeTitle.append(attributeSubtitle)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attributeTitle.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributeTitle.length))
        titleLable.numberOfLines = 0
        titleLable.attributedText = attributeTitle
    }
    
    func setupFacebookButton(){
        signInFacebookBtn.setTitle("Sign in with Facebook", for: UIControl.State.normal)
        signInFacebookBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInFacebookBtn.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/255, alpha: 1)
        signInFacebookBtn.layer.cornerRadius = 5
        signInFacebookBtn.clipsToBounds = true
        signInFacebookBtn.tintColor = .white
        
        //signInFacebookBtn.setImage(UIImage(named: "googlee"), for: UIControl.State.normal)
        //signInFacebookBtn.imageView?.contentMode = .scaleAspectFit
        //signInFacebookBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -30, bottom: 12, right: 200)
    }
    
    func setupOrLabel(){
        orLabel.font = UIFont.boldSystemFont(ofSize: 16)
        orLabel.textAlignment = .center
        orLabel.textColor = UIColor.init(white: 0, alpha: 0.45)
    }
    
    func setupGoogleButton(){
        signInGoogleBtn.setTitle("Sign in with Google", for: UIControl.State.normal)
        signInGoogleBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        signInGoogleBtn.backgroundColor = UIColor(red: 233/255, green: 74/255, blue: 50/255, alpha: 1)
        signInGoogleBtn.layer.cornerRadius = 5
        signInGoogleBtn.clipsToBounds = true
        signInGoogleBtn.tintColor = .white
    }
    
    func setupCreateAccountButton(){
        createNewBtn.setTitle("Create a new account", for: UIControl.State.normal)
        createNewBtn.layer.cornerRadius = 5
        createNewBtn.clipsToBounds = true
        createNewBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        createNewBtn.backgroundColor = UIColor.black
        createNewBtn.tintColor = .white
    }
    
    func setupTermsLabel(){
        let attributedTermsText = NSMutableAttributedString(string: "By clicking Create a new account you agree to our", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16)
            ,NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributedTermsService = NSMutableAttributedString(string: " Terms of service.", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)
            , NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        attributedTermsText.append(attributedTermsService)
        termsOfServiceLabel.numberOfLines = 2
        termsOfServiceLabel.attributedText = attributedTermsText
    }
}
