//
//  SignInController.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 9/19/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class SignInController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    var ref: DatabaseReference?
    var myList:[String] = []
    var handle:DatabaseHandle?
    

    @IBAction func loginButton(_ sender: UIButton, forEvent event: UIEvent) {          ////  LOGIN
        
        if let email = emailTextField.text, let password = passwordTextField.text {//
            Auth.auth().signIn(withEmail: email, password: password, completion: { user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                
                }
                print("successful sign in")
                self.performSegue(withIdentifier: "SignInSegue", sender: nil)
            })
        }   //
    }    ////
        ////
    
    @IBAction func registerButton(_ sender: Any, forEvent event: UIEvent) {             ////  REGISTER
        
        let email = emailTextField.text
        let password = passwordTextField.text //
            Auth.auth().createUser(withEmail: email!, password: password!, completion: { user, error in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                print("successful authentication")
              })
            //
        let UserID = Auth.auth().currentUser?.uid
        let values = ["userID": UserID, "email": email, "password": password, "books": nil]
        myDatabase.shared.userRef.childByAutoId().setValue(values)
      
        self.performSegue(withIdentifier: "SignInSegue", sender: nil)
        
    }   ////
       ////
    
}           //end
