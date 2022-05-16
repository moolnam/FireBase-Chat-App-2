//
//  LoginViewController.swift
//  FireBase-Chat-App
//
//  Created by KimJongHee on 2022/05/16.
//

import UIKit
import Firebase

class ReViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var RegisterPressed: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterPressedButton(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print("Faild : \(e.localizedDescription)")
                }
                else {
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
        
    }
    
    

}
