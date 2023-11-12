//
//  HeaderView.swift
//  ToDoList
//
//  Created by Darya Martynenko on 09.11.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .bold()
                Text("Get things done")
                    .font(.system(size: 30))

            }
            .padding(.top, 30)
            .foregroundStyle(.white)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
