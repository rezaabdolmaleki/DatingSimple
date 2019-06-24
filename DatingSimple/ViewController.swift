//
//  ViewController.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/23/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var signInFacebookBtn: UIButton!
    @IBOutlet weak var orLabel: UILabel!
    @IBOutlet weak var signInGoogleBtn: UIButton!
    @IBOutlet weak var createNewBtn: UIButton!
    @IBOutlet weak var termsOfServiceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        setupHeader()
        setupOrLabel()
        setupTermsLabel()
        setupGoogleButton()
        setupFacebookButton()
        setupCreateAccountButton()
    }

}

