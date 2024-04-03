//
//  String+Trim.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

extension String {
    func trim() -> String {
        return trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
    }
}
