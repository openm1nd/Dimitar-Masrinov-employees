//
//  InitialViewModel.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

struct InitialViewModel {
    var parsedData: [DataItem] = []
    
    mutating func parseCSV(_ url: URL) throws {
        let contents = try String(contentsOf: url)
        parsedData = try contents.parseCSV(separator: ", ", requiredColumns: 4)
    }
}
