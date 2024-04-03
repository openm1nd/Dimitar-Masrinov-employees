//
//  InitialDocumentPickerViewController.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import UIKit

class InitialDocumentPickerViewController: UIViewController {
    
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var pickFileButton: UIButton!
    @IBOutlet weak var showResultsButton: UIButton!
    
    @IBAction func onPickFile() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
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
