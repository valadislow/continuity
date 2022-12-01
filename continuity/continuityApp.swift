//
//  continuityApp.swift
//  continuity
//
//  Created by 1 on 3/9/22.
//

import SwiftUI

@main
struct continuityApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    @ObservedObject var userDefaults = UserDefaultsSetting()
        @ObservedObject var words = Words.shared
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        getUserDefialts()
        return true
    }
    
    func getUserDefialts() {
//        if userDefaults.words.count > 4 {
//            words = userDefaults.words
//        }
//            if userDefaults.words.count > 4 {
//                words.keys = userDefaults.wordsRu
//            }
//            if userDefaults.words.count > 4 {
//                words.values = userDefaults.wordsEn
//            }
      }
}
