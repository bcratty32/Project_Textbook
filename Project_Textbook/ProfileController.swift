//
//  ProfileController.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 9/19/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ProfileController: UIViewController {
    
    @IBOutlet weak var addBookText: UITextField!
    
    override func viewDidLoad() {
        
        myDatabase.shared.userRef.observe(DataEventType.value, with: {
            (snapshot) in print(snapshot)
    })
    }
    
    @IBAction func addBook(_ sender: UIButton) {
        let bookTitle = addBookText.text
        let user = Auth.auth().currentUser
        guard let uid = user?.uid else{
            return
        }
        let ref = Database.database().reference()
       // let currUserRef = ref.child("users").child(uid)
        let bookRef = ref.child("textbooks").child(uid)
        
        let values = ["Title": bookTitle, "User ID" : uid]
        
        bookRef.updateChildValues(values)
        //ref.child((Auth.auth().currentUser?.uid)!).setValue(values)
        //myDatabase.shared.textbookRef.childByAutoId().setValue(values)
        
        //currUser.updateChildValues(values)
        
    }
    
    
    @IBAction func signoutButton(_ sender: Any) {       //SIGN OUT
        do {
            try Auth.auth().signOut()
            dismiss(animated: true, completion: nil)
        } catch {
            print("There was a problem logging out")
        }
    }

}
