//
//  RegisterController.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 9/19/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import UIKit
import FirebaseDatabase

class RegisterController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var repeatPassTextField: UITextField!

    var ref:DatabaseReference?
    @IBAction func loginButton(_ sender: UIButton, forEvent event: UIEvent) {
        
        ref = Database.database().reference()
        
        
        if emailTextField.text != ""
        {
            ref?.child("email").childByAutoId().setValue(emailTextField.text)
        }
        if passwordTextField.text != ""
        {
            ref?.child("password").childByAutoId().setValue(passwordTextField.text)
        }
        if repeatPassTextField.text != ""
        {
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
