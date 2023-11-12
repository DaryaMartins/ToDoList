//
//  LoginView.swift
//  ToDoList
//
//  Created by Darya Martynenko on 09.11.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                
                // Login form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(.plain)
                        .listRowSeparator(.hidden)
                        .padding(.top, 10)
                    SecureField("Password", text: $password)
                        .textFieldStyle(.plain)
                        .listRowSeparator(.hidden)
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(.blue)
                            
                            Text("Log in")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                
                
                
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
