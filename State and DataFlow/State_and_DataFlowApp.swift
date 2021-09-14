//
//  State_and_DataFlowApp.swift
//  State and DataFlow
//
//  Created by Karpinets Alexander on 14.09.2021.
//

import SwiftUI

@main
struct State_and_DataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
