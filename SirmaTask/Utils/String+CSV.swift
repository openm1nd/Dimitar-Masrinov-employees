//
//  String+CSV.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

extension String {
    func parseCSV<T: CSVProtocol>(separator: String = ",", requiredColumns: Int = 0) throws -> [T]  {
        let rows = split(separator: "\n")
        if rows.count == 0 {
            throw ParseError.parseError(message: "No data rows")
        }
        
        var datagrid: [T] = []
        for row in rows {
            let r = row.split(separator: separator)
            if r.count != requiredColumns {
                throw ParseError.parseError(message: "Invalid format")
            }
            
            try datagrid.append(T(data: r))
          //  r
            //T($0)
          //  T($0)
        }
        
        
        return datagrid
    }
}
