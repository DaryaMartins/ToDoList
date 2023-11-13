//
//  RegisterView.swift
//  ToDoList
//
//  Created by Darya Martynenko on 09.11.2023.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                background: .orange
            )
            
            // Register form
            Form {
                TextField("Full name", text: $viewModel.name)
                    .listRowSeparator(.hidden)
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .listRowSeparator(.hidden)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .listRowSeparator(.hidden)
                
                TLButton(
                    title: "Create account",
                    background: .green
                ) {
                    // to do
                }
                
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
