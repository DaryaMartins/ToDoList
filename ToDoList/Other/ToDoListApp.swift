//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Darya Martynenko on 08.11.2023.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
