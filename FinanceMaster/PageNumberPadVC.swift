//
//  ViewController.swift
//  FinanceMaster
//
//  Created by Олег Курбатов on 12.11.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    
    // MARK: - outlets
    
    @IBOutlet weak var centralGrayView: UIView!
    @IBOutlet weak var centralButtonNumber: UITextField!
    @IBOutlet weak var setDate: UIDatePicker!
    @IBOutlet weak var createLimit: UIButton!
    @IBOutlet weak var addAndSaveExpenses: UIButton!
        
    // MARK: - create color
    
    let darkBlueColor = UIColor(red: 52/255, green: 73/255, blue: 94/255, alpha: 1.0) // dark blue color
    let darkOrangeColor = UIColor(red: 204/255, green: 102/255, blue: 0/255, alpha: 1.0) // dark orange color
    let grayBlueColor = UIColor(red: 176/255, green: 196/255, blue: 222/255, alpha: 1.0) // gray blue color
    let darkGrayColor = UIColor(red: 189/255, green: 195/255, blue: 199/255, alpha: 1.0) // darkGrayColor

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurMainView()
        dateCoinfigur()

        // add button Add and Save
        addAndSaveExpenses.configButtonAddandSave(cornerRadius: addAndSaveExpenses.frame.height / 2, backgroundColor: grayBlueColor, symbolText: "+", symbolColor: .white, symbolFontSize: 26)
        
    }

    // MARK: - configuration date
    
    private func dateCoinfigur() {
        DateSettings.configurDate(datePicker: setDate)
    }

    
}
