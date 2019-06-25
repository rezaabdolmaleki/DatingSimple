//
//  ResetPasswordViewController.swift
//  DatingSimple
//
//  Created by reza abdolmaleki on 6/24/19.
//  Copyright © 2019 reza abdolmaleki. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resetTxtTextField: UITextField!
    @IBOutlet weak var resetTxtContainerView: UIView!
    @IBOutlet weak var resetPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI(){
        setupTitle()
        setupResetButton()
        setupTextFieldReset()
    }
    
    @IBAction func dismissToMainViewController(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
