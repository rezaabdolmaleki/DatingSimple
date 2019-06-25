//
//  SignUpViewController+UI.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

extension SignUpViewController {
    
    func setupTitleLabel(){
        let title = "Sign Up"
        
        let attributedTitle = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont(name: "Didot", size: 26)!,NSAttributedString.Key.foregroundColor : UIColor.black])
        titleLabel.attributedText = attributedTitle
    }
    
    func setupAvatar(){
        avatarImage.layer.cornerRadius = 40
        avatarImage.clipsToBounds = true
        
        avatarImage.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(avatarTapedGesture))
        avatarImage.addGestureRecognizer(tapGesture)
    }
    
    @objc func avatarTapedGesture() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker , animated: true)
    }
    
    func setupFullNameTextField(){
        fullNameContainerView.layer.borderWidth = 1
        fullNameContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        fullNameContainerView.layer.cornerRadius = 5
        fullNameContainerView.clipsToBounds = true
        
        fullNameTextField.borderStyle = .none
        
        let placeholderAttrib = NSAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        fullNameTextField.attributedPlaceholder = placeholderAttrib
        fullNameTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupEmailTextField(){
        emailContainerView.layer.cornerRadius = 5
        emailContainerView.clipsToBounds = true
        emailContainerView.layer.borderWidth = 1
        emailContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        
        emailTextField.borderStyle = .none
        let attribPlaceHolder = NSAttributedString(string: "Email Address", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        emailTextField.attributedPlaceholder = attribPlaceHolder
        emailTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupPasswordTextField(){
        passwordContainerView.layer.cornerRadius = 5
        passwordContainerView.clipsToBounds = true
        passwordContainerView.layer.borderWidth = 1
        passwordContainerView.layer.borderColor = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1).cgColor
        
        passwordTextField.borderStyle = .none
        let attribPlaceHolder = NSAttributedString(string: "Password (+8 Charachter)", attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)])
        
        passwordTextField.attributedPlaceholder = attribPlaceHolder
        passwordTextField.textColor = UIColor(red: 99/255, green: 99/255, blue: 99/255, alpha: 1)
    }
    
    func setupSignUpBtn(){
        signUpBtn.setTitle("Sign Up", for: UIControl.State.normal)
        signUpBtn.backgroundColor = .black
        signUpBtn.setTitleColor(.white, for: UIControl.State.normal)
        signUpBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signUpBtn.layer.cornerRadius = 5
        signUpBtn.clipsToBounds = true
        
    }
    
    func setupSignInBtn(){
        let attributedText = NSMutableAttributedString(string: "Alredy have an account? ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        
        let attributedSubText = NSMutableAttributedString(string: "Sing In", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black])
        
        attributedText.append(attributedSubText)
        signInBtn.setAttributedTitle(attributedText, for: UIControl.State.normal)
        
    }
}


extension SignUpViewController : UIImagePickerControllerDelegate , UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedEditedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            avatarImage.image = selectedEditedImage
        }
        
        if let selectedOriginalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            avatarImage.image = selectedOriginalImage
        }
        
        picker.dismiss(animated: true, completion: nil)
        
    }
    
}
