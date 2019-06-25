//
//  SignInViewController+UI.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension SignInViewController {
    
    func setupTitle(){
        let attributedTitle = NSMutableAttributedString(string: "  Sign In", attributes: [NSAttributedString.Key.font : UIFont(name: "Didot", size: 26)!,NSAttributedString.Key.foregroundColor : UIColor.black])
        titleLabel.attributedText = attributedTitle
    }
    
    func setupUsernameTextField(){
        usernameContainerView.layer.cornerRadius = 5
        usernameContainerView.clipsToBounds = true
        usernameContainerView.layer.borderWidth = 1
        usernameContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        usernameTextField.borderStyle = .none
        
        let usernamePlaceHolderAttribute = NSAttributedString(string: "User Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        usernameTextField.attributedPlaceholder = usernamePlaceHolderAttribute
        usernameTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupPasswordTextField(){
        passwordContainerView.layer.cornerRadius = 5
        passwordContainerView.clipsToBounds = true
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        passwordTextField.borderStyle = .none
        passwordTextField.isSecureTextEntry = true
        
        let passwordPlaceHolderAttribute = NSAttributedString(string: "Password (+8 Charachter)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        passwordTextField.attributedPlaceholder = passwordPlaceHolderAttribute
        passwordTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupSignInBtn(){
        signInBtn.layer.cornerRadius = 5
        signInBtn.clipsToBounds = true
        signInBtn.setTitle("Sign In", for: UIControl.State.normal)
        signInBtn.setTitleColor(.white, for: UIControl.State.normal)
        signInBtn.backgroundColor = .black
        signInBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
    }
    
    func setupSignUpBtn(){
        let attributeTitle = NSMutableAttributedString(string: "Don't have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16),NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributeSubTitle = NSMutableAttributedString(string: " Sign Up", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black])
        attributeTitle.append(attributeSubTitle)
        signUpBtn.setAttributedTitle(attributeTitle, for: UIControl.State.normal)
    }
    
    func setupResetPasswordButton(){
        resetPasswordButton.setTitle("Reset my password", for: UIControl.State.normal)
        resetPasswordButton.layer.borderWidth = 0
        resetPasswordButton.setTitleColor(.black, for: UIControl.State.normal)
        resetPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    }
}
