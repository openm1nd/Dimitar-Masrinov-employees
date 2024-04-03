//
//  ViewController.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import UIKit

class DatagridTableViewController: UITableViewController {
    var viewModel = DatagridViewModel() {
        didSet {
            tableView.reloadData()
        }
    }
    
    func setParsedData(_ data: [DataItem]) {
        viewModel.processData(data)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.content.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataGridTableViewCell", for: indexPath) as! DataGridTableViewCell
        cell.setup(viewModel.content[indexPath.row])
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

