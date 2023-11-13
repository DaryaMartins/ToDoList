//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Darya Martynenko on 09.11.2023.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
}
