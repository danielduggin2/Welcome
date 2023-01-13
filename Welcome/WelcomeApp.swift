//
//  WelcomeApp.swift
//  Welcome
//
//  Created by Daniel Wade Duggin on 1/13/23.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth


@main
struct WelcomeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            IntroView()
        }
    }
}


class AppDelegate: NSObject,UIApplicationDelegate{
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
}
