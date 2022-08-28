//
//  SignUpVC.swift
//  BasicSnapchatClone
//
//  Created by ILKER on 29.08.2022.
//

import UIKit
import Firebase

class SignUpVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var signInLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signInLabel.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signIn))
        signInLabel.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func signIn() {
        performSegue(withIdentifier: "toSignInVC", sender: nil)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
    }
    
}
