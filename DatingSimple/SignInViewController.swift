//
//  SignInViewController.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameContainerView: UIView!
    @IBOutlet weak var passwordContainerView: UIView!
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        setupTitle()
        setupSignInBtn()
        setupSignUpBtn()
        setupUsernameTextField()
        setupPasswordTextField()
        setupResetPasswordButton()
    }
    @IBAction func dismissViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
