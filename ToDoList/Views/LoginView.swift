//
//  LoginView.swift
//  ToDoList
//
//  Created by Darya Martynenko on 09.11.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "To Do List",
                    subtitle: "Get things done",
                    angle: 15,
                    background: .pink
                )
                
                // Login form

                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .listRowSeparator(.hidden)
                        .autocorrectionDisabled()
                        .textInputAutocapitalization(.never)
                        .padding(.top, 10)
                    SecureField("Password", text: $viewModel.password)
                        .listRowSeparator(.hidden)
                    TLButton(
                        title: "Log in",
                        background: .blue
                    ) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                
                
                // Create account
                VStack {
                    Text("New around here?")

                    NavigationLink("Create account", destination: RegisterView())
                }
                .padding(.top, 20)
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
