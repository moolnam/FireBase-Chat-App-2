//
//  RegisterViewController.swift
//  FireBase-Chat-App
//
//  Created by KimJongHee on 2022/05/16.
//

import UIKit
import Firebase

class LoViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var pressedButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load")
    }
    
    @IBAction func loginPressedButton(_ sender: UIButton) {
        // Login Button
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                if let e = error {
                    print("Faild : \(e.localizedDescription)")
                }
                else {
                    self?.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
        
    }
    

}
