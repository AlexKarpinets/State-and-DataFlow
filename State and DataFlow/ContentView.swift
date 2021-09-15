//
//  ContentView.swift
//  State and DataFlow
//
//  Created by Karpinets Alexander on 14.09.2021.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("\(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            
            ButtonView(timer: timer)
            Spacer()
            Button(action: {presentationMode.wrappedValue.dismiss()}, label: {
                Text("Dismiss")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            })
            .frame(width: 200, height: 60)
            .background(Color.red)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 4))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.green)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
        .stroke(Color.black, lineWidth: 4))
    }
}
