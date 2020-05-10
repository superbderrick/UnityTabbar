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
        TMDBClient.getRequestToken(completion: handleRequestTokenResponse(success:error:))
    }
    
    func handleRequestTokenResponse(success: Bool, error: Error?) {
        if success {
            showLoginFailure(message: "Success")
        } else {
            showLoginFailure(message: error?.localizedDescription ?? "")
        }
//        if success {
//            TMDBClient.login(username: emailTextField.text ?? "", password: passwordTextField.text ?? "", completion: handleLoginResponse(success:error:))
//        } else {
//            showLoginFailure(message: error?.localizedDescription ?? "")
//        }
    }

    func handleLoginResponse(success: Bool, error: Error?) {
//        if success {
//            TMDBClient.createSessionId(completion: handleSessionResponse(success:error:))
//        } else {
//            showLoginFailure(message: error?.localizedDescription ?? "")
//        }
    }

    func showLoginFailure(message: String) {
        let alertVC = UIAlertController(title: "Login Failed", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        show(alertVC, sender: nil)
    }

    func handleSessionResponse(success: Bool, error: Error?) {
//        setLoggingIn(false)
//        if success {
//            performSegue(withIdentifier: "completeLogin", sender: nil)
//        } else {
//            showLoginFailure(message: error?.localizedDescription ?? "")
//        }
    }
    


}
