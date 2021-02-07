//
//  LogController.swift
//  CBT
//
//  Created by Peter Mitchell on 2/7/21.
//

import Foundation

class LogController: ObservableObject {
    @Published var log: Log
    init(){
        log = Log()
    }
}
