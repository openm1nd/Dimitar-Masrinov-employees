//
//  DateFormatter+Multiple.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

extension DateFormatter {
    func fromString(string: String) -> Date? {
        let formats = ["dd.MM.yy",
                       "yyyy-MM-dd",
                       "yyyy/dd/MM",
                       "MM/dd/yyyy",
                       "MM-dd-yyyy",
                       "MMM d, h:mm a",
                       "EEEE, MMM d, yyyy",
                       "yyyy-MM-dd’T’HH:mm:ssZ"
        ]
        
        for format in formats {
            dateFormat = format
            if let date = date(from: string) {
                return date
            }
        }
        
        return nil
    }
}
