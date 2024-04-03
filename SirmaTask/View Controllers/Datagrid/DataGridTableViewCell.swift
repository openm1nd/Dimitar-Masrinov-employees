//
//  DataGridTableViewCell.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import UIKit

class DataGridTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(_ data: ProcessedDataItem) {
        textLabel?.text = "Employees: \(data.empID) & \(data.otherEmpID)"
        detailTextLabel?.text = "Project:  \(data.projectID) Total days: \(data.daysWorked)"
    }

}
