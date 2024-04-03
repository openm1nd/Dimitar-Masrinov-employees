//
//  InitialViewController+DocumentPicker.swift
//  SirmaTask
//
//  Created by Dimitar Marinov on 2.04.24.
//

import UIKit

extension InitialViewController: UIDocumentPickerDelegate {

    public func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        do {
            try viewModel.parseCSV(url)
        } catch {
            switch(error as? ParseError) {
                case .parseError(let message):
                    statusLabel.text = message
                    showResultsButton.isHidden = true
                case .none:{}()
            }
            return
        }
        
        statusLabel.text = "File is parsed OK"
        showResultsButton.isHidden = false
        
    }
}
