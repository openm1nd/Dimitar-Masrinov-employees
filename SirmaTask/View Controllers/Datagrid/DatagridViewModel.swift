//
//  DatagridViewModel.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//
 
import Foundation

struct DatagridViewModel {
    var content: [ProcessedDataItem] = []
 
    mutating func processData(_ data: [DataItem]) {
        var processed: [ProcessedDataItem] = []
        
        // group by project id, filter all grouped matches where we have at least 2 records for each project
        
        let projects = data.reduce(into: [:]) { result, dataItem in
            result[dataItem.projectID, default: []].append(dataItem)
        }.filter({$0.value.count >= 2})
        
        for project in projects {
            // find the top 2 employees for the specific project, based on the days worked
            let employeesHighestDates = project.value.sorted(by: { dataRow1, dataRow2 in
                dataRow1.daysWorked > dataRow2.daysWorked}).prefix(2)
            
            // sum those dates for later display
            let totalDays = employeesHighestDates.reduce(0) { $0 + $1.daysWorked}
            
            
            processed.append(
                ProcessedDataItem(empID: employeesHighestDates[0].empID, otherEmpID: employeesHighestDates[1].empID, projectID: project.key, daysWorked: totalDays)
             )
        }
        
        // order in the table view by daysWorked descending
        processed = processed.sorted(by: { dataRow1, dataRow2 in
            dataRow1.daysWorked > dataRow2.daysWorked
        })
        
        // use of binding if we have enough data in order to display the data
        if processed.count > 0 {
            content = processed
        }
    }
}
