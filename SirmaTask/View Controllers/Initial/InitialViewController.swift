//
//  InitialViewController.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import UIKit
import MobileCoreServices
import UniformTypeIdentifiers

class InitialViewController: UIViewController {
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var pickFileButton: UIButton!
    @IBOutlet weak var showResultsButton: UIButton!
    
    var viewModel = InitialViewModel()
    
    @IBAction func onPickFile() {
        let uts = [UTType.text]
        let documentPicker = UIDocumentPickerViewController(forOpeningContentTypes: uts)
        documentPicker.delegate = self
        
        present(documentPicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        (segue.destination as? DatagridTableViewController)?.setParsedData(viewModel.parsedData)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
