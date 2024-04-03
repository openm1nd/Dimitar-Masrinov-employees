//
//  Substring+Cast.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation
extension Substring {
    func toInt() throws -> Int {
        if let d = Int(self) {
            return d
        } else {
            throw ParseError.parseError(message: "Invalid format")
        }
    }
    
    func toDate(useTodayIfNil: Bool = false) throws -> Date {
        let dateFormatter = DateFormatter()
        
        if let d = dateFormatter.fromString(string: String(self)) {
            return d
        } else if useTodayIfNil {
            return Date()
        } else {
            throw ParseError.parseError(message: "Invalid format")
        }
    }
}
