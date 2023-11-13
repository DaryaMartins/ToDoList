//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Darya Martynenko on 08.11.2023.
//

import FirebaseCore
import SwiftUI

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil)
    -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct ToDoListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
