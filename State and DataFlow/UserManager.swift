//
//  UserManager.swift
//  State and DataFlow
//
//  Created by Karpinets Alexander on 14.09.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
