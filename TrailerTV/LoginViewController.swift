//
//  ViewController.swift
//  TrailerTV
//
//  Created by derrick on 2020/05/10.
//  Copyright © 2020 Derrick. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginWithWebSiteButton: UIButton!
    @IBOutlet weak var lodingIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        resetUI()
    }
    
    private func resetUI () {
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    private func setLoggingIn(_ loggingIn : Bool) {
        if loggingIn {
            lodingIndicator.startAnimating()
        } else {
            lodingIndicator.stopAnimating()
        }
        
        emailTextField.isEnabled = !loggingIn
        passwordTextField.isEnabled = !loggingIn
        loginButton.isEnabled = !loggingIn
        loginWithWebSiteButton.isEnabled = !loggingIn
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        setLoggingIn(true)
    }
    


}

