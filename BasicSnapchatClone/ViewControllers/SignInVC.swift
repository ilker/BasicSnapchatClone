//
//  ViewController.swift
//  BasicSnapchatClone
//
//  Created by ILKER on 28.08.2022.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var signUpLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signUpLabel.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(signUp))
        signUpLabel.addGestureRecognizer(gestureRecognizer)
    }

    @objc func signUp() {
        performSegue(withIdentifier: "toSignUpVC", sender: nil)
    }
    
    @IBAction func signInButton(_ sender: Any) {
        
    }
    
}

