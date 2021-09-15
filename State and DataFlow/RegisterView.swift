//
//  RegisterView.swift
//  State and DataFlow
//
//  Created by Karpinets Alexander on 14.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @State var showContentView = false
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State var color: Color
    
    var body: some View {
        VStack {
            HStack {  TextField("Enter your Name", text: $name, onCommit:  {
                textColor()
            })
            .multilineTextAlignment(.center)
            Text("\(name.count)")
                .offset(x: -20, y: 0)
                .foregroundColor(color)
            }
            
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }.fullScreenCover(isPresented: $showContentView, content: {
                    ContentView()
                })
            }.disabled(name.count < 3)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            showContentView.toggle()
            user.isRegister.toggle()
        }
    }
    
    private func textColor() {
        if name.count < 3 {
            color = .red
        } else {
            color = .green
        }
    }
    
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView(color: .red)
        }
    }
}

