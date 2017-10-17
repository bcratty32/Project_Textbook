//
//  Textbook.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 10/2/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//

import UIKit

struct Textbook {
    let userID : String
    let title: String
    let ISBN: String
        
    init?(userID: String, dict: [String: Any]) {
        self.userID = userID
        guard let title = dict["title"] as? String,
            let ISBN = dict["password"] as? String
            
            else { return nil }
        
        self.title = title
        self.ISBN = ISBN
        
        
    }
   
    
}
