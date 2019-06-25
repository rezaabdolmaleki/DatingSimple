//
//  ResetPasswordViewController+UI.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension ResetPasswordViewController {
    
    func setupTitle(){
        let attributedTitle = NSMutableAttributedString(string: "Reset Password", attributes: [NSAttributedString.Key.font : UIFont(name: "Didot", size: 28)!,NSAttributedString.Key.foregroundColor : UIColor.black])
        titleLabel.attributedText = attributedTitle
    }
    
    func setupTextFieldReset(){
        resetTxtContainerView.layer.borderWidth = 1
        resetTxtContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        resetTxtContainerView.layer.cornerRadius = 5
        resetTxtContainerView.clipsToBounds = true
        
        resetTxtTextField.borderStyle = .none
        let txtResetPlaceHolderAttribute = NSMutableAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        resetTxtTextField.attributedPlaceholder = txtResetPlaceHolderAttribute
        resetTxtTextField.keyboardType = .emailAddress
        resetTxtTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupResetButton(){
        resetPasswordButton.setTitle("Reset My Password", for: UIControl.State.normal)
        resetPasswordButton.setTitleColor(.white, for: UIControl.State.normal)
        resetPasswordButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        resetPasswordButton.layer.cornerRadius = 5
        resetPasswordButton.clipsToBounds = true
        resetPasswordButton.backgroundColor = .black
    }
}
