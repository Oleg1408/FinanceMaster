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
    
    
    
    // MARK: - date button
    @IBOutlet weak var setDate: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsMainView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        settingsDate()
    }
    
    
    // MARK: - settings menu first page
    private func settingsMainView() {
        
        let sizeForCentralGrayView: CGFloat = 30
        centralGrayView.layer.cornerRadius = sizeForCentralGrayView
    }
    
}
