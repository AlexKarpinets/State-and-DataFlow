//
//  CharCounter.swift
//  State and DataFlow
//
//  Created by Karpinets Alexander on 15.09.2021.
//

import Combine
import Foundation

class CharCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<CharCounter, Never>()

var counter = 0
    
}
