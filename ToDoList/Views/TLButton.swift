//
//  TLButton.swift
//  ToDoList
//
//  Created by Darya Martynenko on 12.11.2023.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
            .padding()
        }
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        // Action
    }
}
