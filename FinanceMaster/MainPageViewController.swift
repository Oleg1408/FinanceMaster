//
//  ViewController.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 12.11.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    // MARK: - central gray view
    @IBOutlet weak var centralGrayView: UIView!
    @IBOutlet weak var centralButtonNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsMainView()
        
    }
    
    
    // MARK: - settings menu first page
    private func settingsMainView() {
        
        // corner radius gray view
        let sizeForCentralGrayView: CGFloat = 30
        centralGrayView.layer.cornerRadius = sizeForCentralGrayView
    }
    
}


// test
