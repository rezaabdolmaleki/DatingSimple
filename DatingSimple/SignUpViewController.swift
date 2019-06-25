//
//  SignUpViewController.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class SignUpViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var fullNameContainerView: UIView!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailContainerView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        setupTitleLabel()
        setupAvatar()
        setupFullNameTextField()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignUpBtn()
        setupSignInBtn()
    }
    
    @IBAction func dismissViewController(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        Auth.auth().createUser(withEmail: "reza@gmail.com", password: "123456") { (AuthData, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            if let authData = AuthData {
                print(authData.user.email!)
                let dict : Dictionary<String, Any> = [
                    "email" : authData.user.email!,
                    "uid" : authData.user.uid,
                    "profileImageURL" : "",
                    "status" :  ""
                ]
                
                Database.database().reference().child("users").child(authData.user.uid).updateChildValues(dict, withCompletionBlock: { (error, ref) in
                    if error == nil {
                        print("\n\n\n\nDone")
                    }
                })
            }
        }
    }
}
