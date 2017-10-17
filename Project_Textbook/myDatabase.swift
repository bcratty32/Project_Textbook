//
//  myDatabase.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 10/3/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import Foundation
import FirebaseDatabase

class myDatabase {
    
    static let shared = myDatabase()
    private init() {}
    
    let userRef = Database.database().reference().child("users")
    let textbookRef = Database.database().reference().child("textbooks")
    
    
    
}
