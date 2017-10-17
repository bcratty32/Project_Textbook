//
//  AppDelegate.swift
//  Project_Textbook
//
//  Created by Dean Kromer on 9/19/17.
//  Copyright © 2017 Dean Kromer. All rights reserved.
//


import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        return true
    }

}
