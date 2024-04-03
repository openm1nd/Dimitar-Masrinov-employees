//
//  String+CSV.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

extension String {
    func parseCSV() -> [DataRow] throws {
        let rows = split(separator: "\n")
        if rows.first != "EmpID, ProjectID, DateFrom, DateTo" {
            throw ParseError.parseError
        }
        
        let datagrid = rows.map({$0.split(separator: ",").map{$0.trim()}})
        if datagrid.count == 0 {
            throw ParseError.invalidContent
        }
        print(datagrid)
    }
    
    func csvData() {
        
    }
}
