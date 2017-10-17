//
//  User.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 9/27/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import UIKit
import Foundation

struct User {
    let userID: String
    let email: String
    let password: String
    
    init?(userID: String, dict: [String: Any]) {
        self.userID = userID
        guard let email = dict["email"] as? String,
        let password = dict["password"] as? String
       
            else { return nil }
        
        self.email = email
        self.password = password
        
}
    
 
    
    
}
