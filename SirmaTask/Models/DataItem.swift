//
//  DataRow.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import Foundation

struct DataItem: CSVProtocol, Hashable {
    let empID: Int
    let projectID: Int
    let dateFrom: Date
    let dateTo: Date
    
    init(empID: Int,
         projectID: Int,
         dateFrom: Date,
         dateTo: Date) {
         self.empID = empID
         self.projectID = projectID
         self.dateFrom = dateFrom
         self.dateTo = dateTo
    }
    
    var daysWorked: Int {
        // count today as 1
        return max(1, Int(self.dateTo.timeIntervalSince(self.dateFrom) / 86400))
    }
    
    init(data: [Substring.SubSequence]) throws {
        self.init(
            empID: try data[0].toInt(),
            projectID: try data[1].toInt(),
            dateFrom: try data[2].toDate(),
            dateTo: try data[3].toDate(useTodayIfNil: true)
        )
    }
}
