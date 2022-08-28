//
//  ViewController.swift
//  BasicSnapchatClone
//
//  Created by ILKER on 28.08.2022.
//

import UIKit
import Firebase

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
        
        Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { authResult, error in
            if error != nil {
                self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error!")
            } else {
                self.performSegue(withIdentifier: "toFeedVC", sender: nil)
            }
        }
        
    }
    
    func makeAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

